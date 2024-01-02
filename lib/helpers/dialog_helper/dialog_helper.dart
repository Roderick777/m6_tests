import 'package:flutter/material.dart';

class DialogHelper {
  static Future<void> showCustomDialog({
    required BuildContext context,
    required List<Widget> children,
    required Widget title,
    Widget closeText = const Text('Cerrar'),
    List<Widget> actions = const [],
  }) async {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: title,
          content: SingleChildScrollView(
            child: ListBody(children: children),
          ),
          // content: SingleChildScrollView(child: child),
          actions: actions,
        );
      },
    );
  }
}
