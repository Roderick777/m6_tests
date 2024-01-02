import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/ui/views/test_list_view/test_list_view.dart';

class HomeViewSubject extends StatefulWidget {
  final Subject subject;

  const HomeViewSubject({
    super.key,
    required this.subject,
  });

  @override
  State<HomeViewSubject> createState() => _HomeViewSubjectState();
}

class _HomeViewSubjectState extends State<HomeViewSubject> {
  _goToSubject(BuildContext c) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TestListView(subject: widget.subject),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Material(
        color: const Color(0xffefefef),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.subject.name,
                          style: const TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => _goToSubject(context),
                          child: const Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 3,
                            children: [
                              Text('Ver más'),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        )
                      ],
                    )
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
