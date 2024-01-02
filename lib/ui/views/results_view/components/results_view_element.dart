import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';

class ResultsViewElement extends StatefulWidget {
  final TestResult result;
  const ResultsViewElement({
    super.key,
    required this.result,
  });

  @override
  State<ResultsViewElement> createState() => _ResultsViewElementState();
}

class _ResultsViewElementState extends State<ResultsViewElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.result.testName,
              style: const TextStyle(fontSize: 18),
            ),
            Text('Evaluado: ${widget.result.userName}'),
            Text('Email: ${widget.result.userEmail}'),
            Row(
              children: [
                const Text('Porcentaje de logro:'),
                Text(
                  ' ${widget.result.result}%',
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
