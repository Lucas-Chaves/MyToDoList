import 'package:flutter/material.dart';
import '../../theme/theme.dart';


class ButtonDraco extends StatelessWidget {
  final String btnText;
  final VoidCallback? functionButton;
  final Color? colorButton;
  final double? widthSize;
  final double? heightSize;
  final TextStyle? textThemeButton;

  const ButtonDraco({Key? key, this.btnText = "", this.functionButton, this.colorButton, this.widthSize, this.textThemeButton, this.heightSize}) : super(key: key);

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
        width: widthSize?? MediaQuery.of(context).size.width,
        height: heightSize?? kHeightL,
        child: Text(
          btnText,
          style: textThemeButton?? getTextTheme.button,
        ),
      ),
      onTap: functionButton ?? (){},
    );
  }
}
