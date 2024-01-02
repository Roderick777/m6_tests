import 'package:m6_app_tests/application/models/subject_test_model.dart';

class EvaluationDomain {
  /// Retorna el pocentaje de logro de una evaluación
  static double calculateEvaluation(SubjectTest test) {
    double sumPoints = 0;
    int totalPoints = test.questions.length;
    for (int i = 0; i < test.questions.length; i++) {
      Question question = test.questions[i];
      sumPoints += question.answer!.isCorrect ? 1 : 0;
    }
    double result = (sumPoints * 100) / totalPoints;
    return double.parse((result).toStringAsFixed(1));
  }
}
