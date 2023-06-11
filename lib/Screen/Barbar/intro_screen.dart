import 'package:flutter/material.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/barbar/man1.png'),
          )
        ],
      ),
    );
  }
}
