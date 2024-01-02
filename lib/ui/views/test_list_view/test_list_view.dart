import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/data/subject_tests_data.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/ui/views/test_list_view/components/test_element.dart';

class TestListView extends StatefulWidget {
  final Subject subject;
  const TestListView({super.key, required this.subject});

  @override
  State<TestListView> createState() => _TestListViewState();
}

class _TestListViewState extends State<TestListView> {
  List<SubjectTest> tests = SubjectTestsData.getMath();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.subject.name),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: ListView.builder(
          itemCount: tests.length,
          itemBuilder: (BuildContext c, int i) {
            SubjectTest element = tests[i];
            return TestElement(element: element, subject: widget.subject);
          },
        ),
      ),
    );
  }
}
