import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Padding(padding: EdgeInsets.symmetric(vertical: 32)),
              Expanded(
                  child: Text(
                'Organize sua vida',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              )),
              Expanded(
                flex: 2,
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur luctus tempus mi. Praesent a neque erat. Morbi tempor auctor nunc, vitae consequat mauris pretium in. Sed semper imperdiet magna sed imperdiet. Aliquam id porta enim, non blandit nibh. Mauris ornare nunc eget accumsan congue. Praesent cursus sed mauris a malesuada. Maecenas nec pellentesque justo. Nunc orci massa, finibus quis lobortis a, eleifend vitae nisl. Aliquam pulvinar mi a egestas vulputate.',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                  flex: 3,
                  child: Image.asset('lib/assets/onboard/onboard_1.png')),
              Expanded(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Começar',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 16))
            ],
          ),
        ),
      ),
    );
  }
}
