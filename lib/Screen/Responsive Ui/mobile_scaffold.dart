import 'package:flutter/material.dart';
import 'package:onlyui/Screen/Responsive%20Ui/appdrawer.dart';
import 'package:onlyui/Screen/Responsive%20Ui/constant.dart';
class MobileScaffold extends StatelessWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      drawer: myDrawer,

    );

  }
}
