import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_model.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:m6_app_tests/ui/views/home_view/components/home_view_subject.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<Subject> elements = Provider.of<MainProvider>(context).subjects;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tests App'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) {
          Subject element = elements[index];
          return HomeViewSubject(subject: element);
        },
      ),
    );
  }
}
