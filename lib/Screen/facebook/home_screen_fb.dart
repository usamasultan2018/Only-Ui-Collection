import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('facebook'),
        bottom:TabBar(
            tabs: [
              Icon(Icons.home_rounded),
              Icon(Icons.live_tv),
              Icon(Icons.person_pin),
              Icon(Icons.feedback_rounded),
              Icon(Icons.notifications),
              Icon(Icons.person_pin_outlined),

        ])
      ),
    );
  }
}
