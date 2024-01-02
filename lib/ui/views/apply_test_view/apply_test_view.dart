import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:m6_app_tests/application/domain/evaluation_domain.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/helpers/localstorage_helper/local_storage_helper.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:m6_app_tests/ui/views/apply_test_view/components/evaluated_user.dart';
import 'package:m6_app_tests/ui/views/apply_test_view/components/question_element.dart';
import 'package:m6_app_tests/ui/views/results_view/results_view.dart';
import 'package:provider/provider.dart';

class ApplyTestView extends StatefulWidget {
  final SubjectTest test;
  final Subject subject;
  const ApplyTestView({
    super.key,
    required this.test,
    required this.subject,
  });

  @override
  State<ApplyTestView> createState() => _ApplyTestViewState();
}

class _ApplyTestViewState extends State<ApplyTestView> {
  final LocalStorage storage = LocalStorage('results');

  bool _hasAllAnswers(BuildContext context) {
    SubjectTest test = Provider.of<MainProvider>(context).currentTest;
    return test.questions.every((e) => e.answer != null);
  }

  void _evaluate() {
    SubjectTest test = Provider.of<MainProvider>(context, listen: false).currentTest;
    User user = Provider.of<MainProvider>(context, listen: false).currentUser;
    double result = EvaluationDomain.calculateEvaluation(test);
    TestResult testResult = TestResult(
      id: 0,
      userName: user.name,
      userEmail: user.email,
      testName: test.name,
      result: result,
    );
    LocalStorageHelper.add('results_3', jsonDecode(jsonEncode(testResult)));
    List<dynamic> results = LocalStorageHelper.list('results_3');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsView(results: results),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<MainProvider>(context).currentUser;
    Size size = MediaQuery.of(context).size;
    bool showFab = _hasAllAnswers(context);

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: showFab
          ? SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(150, 50)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [Icon(Icons.save), Text('Finalizar')],
                  ),
                ),
                onPressed: () => _evaluate(),
              ),
            )
          : (const SizedBox()),
      appBar: AppBar(
        title: Text(widget.test.name),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 50),
        child: SizedBox(
          width: size.width,
          height: size.height - 60,
          child: ListView.builder(
            itemCount: widget.test.questions.length,
            itemBuilder: (BuildContext c, int i) {
              if (i == 0) {
                return Column(
                  children: [
                    EvaluatedUser(user: user, subject: widget.subject),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                      padding: const EdgeInsets.all(16),
                      child: QuestionElement(questionIndex: i),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              }

              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                    padding: const EdgeInsets.all(16),
                    child: QuestionElement(questionIndex: i),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
