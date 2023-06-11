import 'package:flutter/material.dart';
class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool switchValue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: switchValue?Colors.black:Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Change The BackgroundColor',style: TextStyle(
            color: switchValue?Colors.white:Colors.black,
          ),),
          Switch(
              value: switchValue,
              onChanged: (bool newValue){
                setState(() {
                  switchValue =newValue;
                });

              })
        ],
      ),
    );
  }
}
