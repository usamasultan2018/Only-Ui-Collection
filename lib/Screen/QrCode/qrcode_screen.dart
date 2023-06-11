import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        title: Text('Appbar'),
    ),
      body :Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width:_mediaQuery.size.width*0.2 ,
            height: MediaQuery.of(context).size.height*0.4,
            color:Colors.purple,
          ),
          Container(
            color: Colors.amber,
            height: _mediaQuery.size.height*0.5,
            width: _mediaQuery.size.width*0.8,
          )
        ],
      )
    );
    }
}