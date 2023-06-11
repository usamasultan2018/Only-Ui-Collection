import 'package:flutter/foundation.dart';

import 'category.dart';

class Book{
  final String title;
  final int price ;
  final String image;
 final Cate category;
  Book({required this.title,required this.price,required this.image,required this.category});
}