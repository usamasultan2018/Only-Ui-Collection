import 'package:flutter/material.dart';
import 'package:onlyui/Screen/BookShop/Screen/book_shop.dart';
import 'package:onlyui/Screen/coca_cola/coca_cola.dart';

import 'Screen/Barbar/intro_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:CocaCola(),
    );
  }
}
