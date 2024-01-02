import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:provider/provider.dart';

class QuestionLegend extends StatefulWidget {
  final int questionIndex;
  const QuestionLegend({
    super.key,
    required this.questionIndex,
  });

  @override
  State<QuestionLegend> createState() => _QuestionLegendState();
}

class _QuestionLegendState extends State<QuestionLegend> {
  @override
  Widget build(BuildContext context) {
    SubjectTest test = Provider.of<MainProvider>(context).currentTest;
    Question question = test.questions[widget.questionIndex];

    if (question.answer != null) {
      const Row(
        children: [
          Icon(Icons.check, color: Colors.green),
          SizedBox(width: 10),
          Text('Pregunta respondida', style: TextStyle(fontSize: 10, color: Colors.green)),
        ],
      );
    }
    return const SizedBox();
  }
}
