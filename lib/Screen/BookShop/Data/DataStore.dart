import 'package:onlyui/Screen/BookShop/Model/book.dart';
import 'package:flutter/material.dart';
import 'package:onlyui/Screen/BookShop/Data/category_lists.dart';

import 'category_lists.dart';


class DataStore{
  static List<Book>  getData(){
    List<Book> newArrival= [
      Book(title: 'SHOE DOG', price: 120, image: 'images/book1.jpg', category:CategoryList.business),
      Book(title: 'NO RULE RULES', price: 300, image: 'images/book10.jpg', category: CategoryList.business),
      Book(title: 'To Pixer & Beyond', price: 800, image: 'images/book11.jpg', category: CategoryList.business),
      Book(title: 'WONDERS', price: 800, image: 'images/book6.jpg', category: CategoryList.novel),
      Book(title: 'HOLES', price: 800, image: 'images/book7.jpg', category: CategoryList.novel),
    ];
    return newArrival;
  }
  static List<Book> getRecommend(){
    List<Book> recommended =[
      Book(title: 'Auggie & Me', price: 120, image: 'images/book2.jpg', category:CategoryList.biography),
      Book(title: 'Wonders', price: 420, image: 'images/book3.jpg', category:CategoryList.business),
      Book(title: 'Who moved', price: 120, image: 'images/book5.jpg', category:CategoryList.novel),
    Book(title: 'Holes', price: 120, image: 'images/book2.jpg', category:CategoryList.biography),

 ];
    return recommended;
  }
}