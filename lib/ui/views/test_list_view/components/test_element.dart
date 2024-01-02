import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/helpers/dialog_helper/dialog_helper.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:m6_app_tests/ui/views/apply_test_view/apply_test_view.dart';
import 'package:m6_app_tests/ui/views/test_list_view/components/evaluate_user_form.dart';
import 'package:provider/provider.dart';

class TestElement extends StatefulWidget {
  final SubjectTest element;
  final Subject subject;

  const TestElement({
    super.key,
    required this.element,
    required this.subject,
  });

  @override
  State<TestElement> createState() => _TestElementState();
}

class _TestElementState extends State<TestElement> {
  void _goToTest() {
    Provider.of<MainProvider>(context, listen: false).setCurrentTest(widget.element);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ApplyTestView(
          test: widget.element,
          subject: widget.subject,
        ),
      ),
    );
  }

  void _setEvaluatedUser(BuildContext context) {
    DialogHelper.showCustomDialog(
        context: context,
        children: [const EvaluateUserForm()],
        title: const Text('Ingresar los datos del evaluado'),
        actions: [
          TextButton(
            onPressed: () => _goToTest(),
            child: const Text('Comenzar'),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.element.name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
                child: Text('Cantidad de preguntas: ${widget.element.questions.length}'),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                  onPressed: () => _setEvaluatedUser(context),
                  child: const Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 3,
                    children: [
                      Text('Evaluar'),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
