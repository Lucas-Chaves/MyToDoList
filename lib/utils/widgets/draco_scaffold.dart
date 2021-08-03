import 'package:flutter/material.dart';

class DracoScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBarChild;
  final Color? backgroundColor;
  final Widget body;

  const DracoScaffold({
    Key? key,
    this.appBarChild,
    required this.body,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarChild,
      body: SafeArea(
        child: Container(
          color: backgroundColor?? Colors.transparent,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: body,
        ),
      ),
    );
  }
}
