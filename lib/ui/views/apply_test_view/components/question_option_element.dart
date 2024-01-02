import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:provider/provider.dart';

class QuestionOptionElement extends StatefulWidget {
  final QuestionOption option;
  final int questionIndex;
  const QuestionOptionElement({
    super.key,
    required this.option,
    required this.questionIndex,
  });

  @override
  State<QuestionOptionElement> createState() => _QuestionOptionElementState();
}

class _QuestionOptionElementState extends State<QuestionOptionElement> {
  bool _isCorrect(Question question, QuestionOption option) {
    return question.correctOption == option.option;
  }

  _onSelectOption(Question question, QuestionOption option) {
    Answer newAnswer = Answer(
      id: 0,
      name: question.name,
      correctOption: question.correctOption,
      answerOption: option.option,
      isCorrect: _isCorrect(question, option),
    );

    SubjectTest newSubjectTest = Provider.of<MainProvider>(context, listen: false).currentTest;
    newSubjectTest.questions[widget.questionIndex].answer = newAnswer;
    Provider.of<MainProvider>(context, listen: false).setCurrentTest(newSubjectTest);
  }

  Color _getColor(Question question, QuestionOption option) {
    if (question.answer != null) {
      return question.answer!.answerOption == option.option ? Colors.black12 : Colors.transparent;
    }

    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    SubjectTest test = Provider.of<MainProvider>(context, listen: false).currentTest;
    Question question = test.questions[widget.questionIndex];

    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: _getColor(question, widget.option),
              child: InkWell(
                onTap: () {
                  _onSelectOption(question, widget.option);
                },
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Text(widget.option.option),
                        ),
                        Text(widget.option.name),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
