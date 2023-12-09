import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/data/subject_data.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';

class MainProvider with ChangeNotifier {
  List<SubjectModel> _subjects = SubjectData.list;

  List<SubjectModel> get subjects => _subjects;

  void setSubjects(List<SubjectModel> data) {
    _subjects = data;
    notifyListeners();
  }
}
