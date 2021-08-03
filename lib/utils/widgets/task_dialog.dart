import 'package:flutter/material.dart';

Future<void> showAlertDialog({
  required BuildContext context,
  required List<Widget> actions,
  required Widget title,
  required Widget content,
  ShapeBorder? shape,
  bool barrierDismissible = true,
}) async {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: title,
    content: content,
    actions: actions,
    shape: shape,
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
