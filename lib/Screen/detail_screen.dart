import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import 'BookShop/Model/book.dart';

class DetailScreen extends StatelessWidget {
  final Book book;

  DetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(
            Iconsax.bookmark,
            color: Colors.black54,
          ),
        ],
      ),
      body: SafeArea(
          child: Stack(
        fit: StackFit.loose,
        children: [
          Align(
            alignment: Alignment(-0.8, 0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.withOpacity(0.5),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, -0.9),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.withOpacity(0.5),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.3),
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.5),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.8),
            child: Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(book.image),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  book.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Reed Hasting/ Erin Meyer',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
                    initialRating: 3.6,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 15,
                    itemBuilder: (context, index) {
                      return Icon(Icons.star, color: Colors.amber);
                    },
                    onRatingUpdate: (rating) {
                      print('Ratings');
                    }),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                        height: 1.5),
                  ),
                ),
              Align(
                alignment: Alignment(0,0.9),
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.only(left: 70,right: 70)
                ),
                    onPressed: (){},
                    child: Text('ADD TO CART',style: TextStyle(color: Colors.white),)
                ),
              )
              ],
            ),
          )
        ],
      )),
    );
  }
}
