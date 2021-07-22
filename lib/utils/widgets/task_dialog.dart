import 'package:flutter/material.dart';

Future<void> showAlertDialog(BuildContext context) async {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () { Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
