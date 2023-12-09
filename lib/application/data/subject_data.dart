import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';

class SubjectData {
  static List<SubjectModel> list = [
    SubjectModel(
      icon: const Icon(Icons.numbers),
      id: 1,
      name: 'Matemáticas',
    ),
    SubjectModel(
      icon: const Icon(Icons.abc),
      id: 2,
      name: 'Lenguaje',
    ),
    SubjectModel(
      icon: const Icon(Icons.history),
      id: 3,
      name: 'Historia',
    ),
    SubjectModel(
      icon: const Icon(Icons.science),
      id: 2,
      name: 'Ciencias',
    ),
  ];
}
