import 'package:flutter/material.dart';
var appBar = AppBar(
  backgroundColor: Colors.grey.shade900,
);

var myDrawer =Drawer(
  child: ListView(
    children: [
      DrawerHeader(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text('Hello Mubeen ',style: TextStyle(color: Colors.white),),
                Icon(Icons.favorite,size: 100,color: Colors.white)
              ],
            ),
          )
      )
    ],
  ),
);