import 'package:flutter/material.dart';
import '../../theme/theme.dart';


class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback? functionButton;
  final Color? colorButton;

  const MyButton({Key? key, this.btnText = "", this.functionButton, this.colorButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: colorButton?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadiusPrimaryButton))),
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: kHeightM, vertical: kWidthM),
        width: MediaQuery.of(context).size.width,
        child: Text(
          btnText,
          style: getTextTheme.button,
        ),
      ),
      onTap: functionButton ?? (){},
    );
  }
}
