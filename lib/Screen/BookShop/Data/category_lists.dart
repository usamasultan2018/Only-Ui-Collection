import 'package:flutter/material.dart';

import '../Model/category.dart';

class CategoryList{
  static final Cate  business=Cate(name: 'Business', bgColor:Colors.blue.withOpacity(0.4), textColor: Colors.indigo);
  static final Cate novel =Cate(name: 'novel', bgColor: Colors.pink.withOpacity(0.3), textColor: Colors.black54);
  static final Cate biography = Cate(name: 'biography', bgColor: Colors.greenAccent.withOpacity(0.3), textColor: Colors.teal);
}