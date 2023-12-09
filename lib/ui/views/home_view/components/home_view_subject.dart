import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';

class HomeViewSubject extends StatefulWidget {
  final SubjectModel subject;

  const HomeViewSubject({
    super.key,
    required this.subject,
  });

  @override
  State<HomeViewSubject> createState() => _HomeViewSubjectState();
}

class _HomeViewSubjectState extends State<HomeViewSubject> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Material(
        color: const Color(0xffefefef),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10,
                      children: [
                        widget.subject.icon,
                        Text(
                          widget.subject.name,
                          style: const TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
