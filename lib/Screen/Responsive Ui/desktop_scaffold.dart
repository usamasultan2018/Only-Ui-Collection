import 'package:flutter/material.dart';
import 'package:onlyui/Screen/Responsive%20Ui/constant.dart';
class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: appBar,
      body: Container(
        color: Colors.red,
        child: Row(
          children: [
            myDrawer,
          ],
        ),
      ),
    );
  }
}
