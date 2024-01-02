import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/data/subject_data.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';

class MainProvider with ChangeNotifier {
  User _currentUser = User(name: 'Usuario Ejemplar', email: 'u.ejemplar@mail.com');
  List<Subject> _subjects = SubjectData.list;
  Color _mainColor = Colors.lime;
  SubjectTest _currentTest = const SubjectTest(id: 0, name: '', questions: [], answers: []);

  List<Subject> get subjects => _subjects;
  User get currentUser => _currentUser;
  Color get mainColor => _mainColor;
  SubjectTest get currentTest => _currentTest;

  void setSubjects(List<Subject> data) {
    _subjects = data;
    notifyListeners();
  }

  void setCurrentUser(User data) {
    _currentUser = data;
    notifyListeners();
  }

  void setMainColor(Color data) {
    _mainColor = data;
    notifyListeners();
  }

  void setCurrentTest(SubjectTest data) {
    _currentTest = data;
    notifyListeners();
  }
}
