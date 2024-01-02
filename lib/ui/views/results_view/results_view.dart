import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/ui/views/results_view/components/results_view_element.dart';

class ResultsView extends StatefulWidget {
  final List<dynamic> results;
  const ResultsView({
    super.key,
    required this.results,
  });

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Resultados'),
      ),
      body: ListView.builder(
        itemCount: widget.results.length,
        itemBuilder: (BuildContext c, int i) {
          TestResult result = TestResult.fromJson(widget.results[i]);
          return ResultsViewElement(result: result);
        },
      ),
    );
  }
}
