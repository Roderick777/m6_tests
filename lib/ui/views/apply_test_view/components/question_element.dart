import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:m6_app_tests/ui/views/apply_test_view/components/question_option_element.dart';
import 'package:provider/provider.dart';

class QuestionElement extends StatefulWidget {
  final int questionIndex;
  const QuestionElement({
    super.key,
    required this.questionIndex,
  });

  @override
  State<QuestionElement> createState() => _QuestionElementState();
}

class _QuestionElementState extends State<QuestionElement> {
  @override
  Widget build(BuildContext context) {
    SubjectTest test = Provider.of<MainProvider>(context).currentTest;
    Question question = test.questions[widget.questionIndex];
    int i = widget.questionIndex;
    List<QuestionOption> options = question.options;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        QuestionOptionElement(option: options[0], questionIndex: i),
        const SizedBox(height: 16),
        QuestionOptionElement(option: options[1], questionIndex: i),
        const SizedBox(height: 16),
        QuestionOptionElement(option: options[2], questionIndex: i),
        const SizedBox(height: 16),
        QuestionOptionElement(option: options[3], questionIndex: i),
        const SizedBox(height: 16),
        (question.answer != null
            ? const Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 12,
                  ),
                  SizedBox(width: 5),
                  Text('Pregunta respondida', style: TextStyle(fontSize: 10, color: Colors.green)),
                ],
              )
            : const SizedBox()),
        const SizedBox(height: 16),
      ],
    );
  }
}
