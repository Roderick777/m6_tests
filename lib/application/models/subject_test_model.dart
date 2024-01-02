class User {
  int id;
  String name;
  String email;

  User({
    this.id = 0,
    this.name = '',
    this.email = '',
  });
}

class SubjectTest {
  final int id;
  final String name;
  final List<Question> questions;
  final List<dynamic> answers;

  const SubjectTest({
    required this.id,
    required this.name,
    required this.questions,
    required this.answers,
  });
}

class Question {
  final int id;
  final String name;
  final List<QuestionOption> options;
  final String correctOption;
  Answer? answer;

  Question({
    required this.id,
    required this.name,
    required this.options,
    required this.correctOption,
    this.answer,
  });
}

class QuestionOption {
  final int id;
  final String name;
  final int questionId;
  final String option;

  const QuestionOption({
    required this.id,
    required this.name,
    required this.questionId,
    required this.option,
  });
}

class Answer {
  final int id;
  final String name;
  final String correctOption;
  final String answerOption;
  final bool isCorrect;

  const Answer({
    required this.id,
    required this.name,
    required this.correctOption,
    required this.answerOption,
    required this.isCorrect,
  });
}

class TestResult {
  final int id;
  final String userName;
  final String userEmail;
  final String testName;
  final double result;

  const TestResult({
    required this.id,
    required this.userName,
    required this.userEmail,
    required this.testName,
    required this.result,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'userEmail': userEmail,
      'testName': testName,
      'result': result,
    };
  }

  factory TestResult.fromJson(Map<String, dynamic> json) {
    return TestResult(
      id: json['id'] as int,
      userName: json['userName'] as String,
      userEmail: json['userEmail'] as String,
      testName: json['testName'] as String,
      result: json['result'] as double,
    );
  }
}
