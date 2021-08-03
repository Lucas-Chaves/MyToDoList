import 'package:flutter/material.dart';
import 'package:to_do/theme/theme.dart';
import 'package:to_do/utils/utils.dart';
import './constants.dart';

Future<void> dracoLoadingDialog(BuildContext context) async {
  showAlertDialog(
    context: context,
    barrierDismissible: false,
    title: Center(),
    content: Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.05,
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    ),
    actions: [
      Center(child: Text(waitLoading)),
      SpacerSymmetric(height: kHeightM,)
    ],
  );
}
