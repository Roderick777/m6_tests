import 'package:m6_app_tests/application/models/subject_test_model.dart';

/// Datos de las asignaturas
class SubjectTestsData {
  /// Listado de test para la asignatura matemáticas
  static List<SubjectTest> getMath() {
    List<SubjectTest> elements = [
      SubjectTest(
        id: 1,
        name: "Evaluación de Algebra N° 1",
        questions: [
          Question(
            correctOption: 'A',
            id: 1,
            name: "Despeje el valor de x: x + 10 = 0",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "-10", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "10", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "5", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "0", questionId: 1),
            ],
          ),
          Question(
            correctOption: 'D',
            id: 2,
            name: "Despeje el valor de x: 2x - 2 = 8",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "4", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "8", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "1", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "5", questionId: 1),
            ],
          ),
          Question(
            correctOption: 'A',
            id: 3,
            name: "Despeje el valor de x: 2x + 2 = 8",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "3", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "4", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "6", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "8", questionId: 1),
            ],
          ),
        ],
        answers: [],
      ),
      SubjectTest(
        id: 2,
        name: "Evaluación de Algebra N° 2",
        questions: [
          Question(
            correctOption: 'A',
            id: 1,
            name: "Despeje el valor de x: x + 10 = 0",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "-10", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "10", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "5", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "0", questionId: 1),
            ],
          ),
          Question(
            correctOption: 'D',
            id: 2,
            name: "Despeje el valor de x: 2x - 2 = 8",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "4", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "8", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "1", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "5", questionId: 1),
            ],
          ),
          Question(
            correctOption: 'A',
            id: 3,
            name: "Despeje el valor de x: 2x + 2 = 8",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "3", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "4", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "6", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "8", questionId: 1),
            ],
          ),
          Question(
            correctOption: 'B',
            id: 3,
            name: "Despeje el valor de x: 4x + 2 = 18",
            options: [
              const QuestionOption(option: 'A', id: 1, name: "2", questionId: 1),
              const QuestionOption(option: 'B', id: 1, name: "4", questionId: 1),
              const QuestionOption(option: 'C', id: 1, name: "8", questionId: 1),
              const QuestionOption(option: 'D', id: 1, name: "10", questionId: 1),
            ],
          ),
        ],
        answers: [],
      ),
    ];
    return elements;
  }
}
