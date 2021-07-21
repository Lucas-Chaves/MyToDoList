import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../../theme/theme.dart';
import './constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpacerSymmetric(height: kHeightL),
              Expanded(
                  child: Text(
                titleOnboard1,
                textAlign: TextAlign.center,
                style: getTextTheme.headline4,
              )),
              Expanded(
                flex: 2,
                child: Text(descriptionOnboard1,
                    style: getTextTheme.bodyText2, textAlign: TextAlign.center),
              ),
              Expanded(flex: 4, child: Image.asset(pathImageOnboard1)),
              Expanded(
                child: MyButton(
                  btnText: buttonOnboard1,
                  colorButton: Theme.of(context).primaryColor,
                  functionButton: () {},
                ),
              ),
              SpacerSymmetric(height: kHeightM)
            ],
          ),
        ),
      ),
    );
  }
}
