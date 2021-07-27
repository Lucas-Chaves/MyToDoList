import 'package:flutter/material.dart';

Future<void> showAlertDialog({
  required BuildContext context,
  required List<Widget> actions,
  required Widget title,
  required Widget content,
}) async {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: title,
    content: content,
    actions: actions,
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
