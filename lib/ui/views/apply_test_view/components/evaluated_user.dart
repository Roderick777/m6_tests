import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';

class EvaluatedUser extends StatefulWidget {
  final User user;
  final Subject subject;

  const EvaluatedUser({super.key, required this.user, required this.subject});

  @override
  State<EvaluatedUser> createState() => _EvaluatedUserState();
}

class _EvaluatedUserState extends State<EvaluatedUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Evaluado: ${widget.user.name}'),
          Text('Correo: ${widget.user.email}'),
        ],
      ),
    );
  }
}
