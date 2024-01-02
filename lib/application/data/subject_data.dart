import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';

class SubjectData {
  static List<Subject> list = [
    Subject(
      icon: const Icon(Icons.numbers, color: Colors.white),
      id: 1,
      name: 'Matemáticas',
      color: Colors.red,
    ),
    // Subject(
    //   icon: const Icon(Icons.abc, color: Colors.white),
    //   id: 2,
    //   name: 'Lenguaje',
    //   color: Colors.blue,
    // ),
    // Subject(
    //   icon: const Icon(Icons.history, color: Colors.white),
    //   id: 3,
    //   name: 'Historia',
    //   color: Colors.orange,
    // ),
    // Subject(
    //   icon: const Icon(Icons.science, color: Colors.white),
    //   id: 2,
    //   name: 'Ciencias',
    //   color: Colors.green,
    // ),
  ];
}
