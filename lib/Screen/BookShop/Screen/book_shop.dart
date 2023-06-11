import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlyui/Screen/BookShop/Data/DataStore.dart';
import 'package:onlyui/Screen/detail_screen.dart';
class BookShop extends StatefulWidget {
  const BookShop({Key? key}) : super(key: key);

  @override
  State<BookShop> createState() => _BookShopState();
}

class _BookShopState extends State<BookShop> {
int SelectIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  const Icon(Iconsax.menu, color: Colors.black45),
        actions: const [
          Icon(Iconsax.notification,color: Colors.black45,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black54,
        currentIndex: SelectIndex,
        onTap: (int value){
          setState(() {
            SelectIndex = value;
          });
        },

        items: [
      BottomNavigationBarItem(icon:   Icon(Iconsax.book),label: 'Book'),
        BottomNavigationBarItem(icon: Icon(Iconsax.shopping_cart),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Iconsax.profile_circle),label: 'Profile'),

      ],),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 300,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search,color: Colors.black54,),
                        SizedBox(width: 10,),
                        Text('Search',style: TextStyle(color: Colors.black54,fontSize: 15),),

                      ],
                    ),
                  ),
                  const SizedBox(width: 15,),
                  const Icon(Iconsax.camera,color: Colors.black54,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('New Arrival',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: const Text('See All',style: TextStyle(color: Colors.blue,fontSize: 15),))
                ],
              ),

              SizedBox(
                height:250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: DataStore.getData().length,
                itemBuilder: (context, index) {
                var bkk = DataStore.getData()[index];
                return Column(
                  children: [
                    Container(
                      height:150,
                    width: 110,
                    decoration: BoxDecoration(

                      image: DecorationImage(
                          image: AssetImage(bkk.image)
                      ),
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text(bkk.title,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 4,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 30,
                        color:bkk.category.bgColor,
                        child:Center(child: Text(bkk.category.name,style: TextStyle(color: bkk.category.textColor),)),
                      ),
                    )
                  ],
                );

                },
                ),
              ),
              Text('Recomended',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              SizedBox(
                height: 250,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DataStore.getRecommend().length,
                  itemBuilder:(context,index){
                  var rec = DataStore.getRecommend()[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx){
                        return DetailScreen(book: DataStore.getRecommend()[index]);
                      }));
                    },
                    child: Column(
                    children: [
                    Container(
                    height:150,
                    width: 110,
                    decoration: BoxDecoration(

                    image: DecorationImage(
                    image: AssetImage(rec.image)
                    ),
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text(rec.title,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 4,),
                    ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                    height: 30,
                    color:rec.category.bgColor,
              child:Center(child: Text(rec.category.name,style: TextStyle(color: rec.category.textColor),)),
              ),
              )
              ],
              ),
                  );
              }

              ),
              )
            ],
          ),
        ),
      )
    );
  }
}
