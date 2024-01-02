import 'package:flutter/material.dart';
import 'package:m6_app_tests/application/models/subject_test_model.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:provider/provider.dart';

class EvaluateUserForm extends StatefulWidget {
  const EvaluateUserForm({super.key});

  @override
  State<EvaluateUserForm> createState() => _EvaluateUserFormState();
}

class _EvaluateUserFormState extends State<EvaluateUserForm> {
  late TextEditingController _email;
  late TextEditingController _name;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _name = TextEditingController();

    MainProvider mainProvider = Provider.of<MainProvider>(context, listen: false);
    _name.text = mainProvider.currentUser.name;
    _email.text = mainProvider.currentUser.email;
  }

  InputDecoration _getInputStyle(String label) {
    return InputDecoration(
      label: Text(label),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    );
  }

  _onNameBlur(BuildContext c) {
    User user = Provider.of<MainProvider>(context).currentUser;
    user.name = _name.value.text;
    Provider.of<MainProvider>(c, listen: false).setCurrentUser(user);
  }

  _onEmailBlur(BuildContext c) {
    User user = Provider.of<MainProvider>(context).currentUser;
    user.email = _email.value.text;
    Provider.of<MainProvider>(c, listen: false).setCurrentUser(user);
  }

  @override
  Widget build(BuildContext c) {
    return Column(
      children: [
        Focus(
          child: TextFormField(
            controller: _name,
            decoration: _getInputStyle('Nombre del evaluado'),
          ),
          onFocusChange: (bool value) {
            if (value) return;
            _onNameBlur(c);
          },
        ),
        Focus(
          child: TextFormField(
            controller: _email,
            decoration: _getInputStyle('Ingresa tu correo'),
          ),
          onFocusChange: (bool value) {
            if (value) return;
            _onEmailBlur(c);
          },
        ),
      ],
    );
  }
}
