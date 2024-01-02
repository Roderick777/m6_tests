import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';

/// Modelo para asignaturas
class Subject {
  final Widget icon;
  final String name;
  final int id;
  final Color color;
  List<SubjectTest> tests;

  Subject({
    required this.icon,
    required this.id,
    required this.name,
    required this.color,
    this.tests = const [],
  });
}
