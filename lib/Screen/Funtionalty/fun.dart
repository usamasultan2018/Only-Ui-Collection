import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class Functionality extends StatefulWidget {
  const Functionality({Key? key}) : super(key: key);

  @override
  State<Functionality> createState() => _FunctionalityState();
}

class _FunctionalityState extends State<Functionality> {
   bool isClicked = false ;
  int selectIndex =0;
 void nav (int index){
   setState((){
     selectIndex = index;
   });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('fun')),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: selectIndex,
        onTap:nav,
         items:   [
          BottomNavigationBarItem(icon: Icon(Iconsax.home,),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Iconsax.box_search),label: 'Serarch'),
          BottomNavigationBarItem(icon: Icon(Iconsax.add_circle),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Iconsax.profile_circle),label: 'Profile'),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

         Center(
           child: GestureDetector(
             onTap: (){
               print('Clicked');
               setState(() {
                 isClicked =!isClicked;
               });
             },
               child: isClicked? Icon(Icons.favorite_border,size: 100,):Icon(Icons.favorite,size: 100,color: Colors.red,)),
         )
        ],
      ),
    );
  }
}
