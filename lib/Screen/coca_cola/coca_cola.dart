import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class CocaCola extends StatefulWidget {
  const CocaCola({Key? key}) : super(key: key);

  @override
  State<CocaCola> createState() => _CocaColaState();
}

class _CocaColaState extends State<CocaCola> {
  PageController controller = PageController(viewportFraction: 0.6);
  double currentProduct = 0 ;
  int productPrice=0;
  double  totalPrice= 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text('Pick Your Drink',style: TextStyle(color: Colors.grey.shade600,fontSize: 25),),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CLEAR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$$totalPrice',style: TextStyle(color: Colors.white,fontSize: 25)),
                  Text('BUY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          SizedBox(
            height: 400,
            child: PageView(
              controller: controller,
              onPageChanged: (index){
                setState(() {
                  currentProduct = index.toDouble();

                });
              },
              children: [
                Image.asset('images/light.png'),
                Image.asset('images/normal.png'),
                Image.asset('images/zero.png'),
              ],
            ),
          ),
          DotsIndicator(
              position: currentProduct,
              dotsCount: 3,),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){

                  setState(() {
                    productPrice++;
                    totalPrice =productPrice*0.8;
                  });
                },
                child: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add),

                ),
              ),
              const SizedBox(width: 9,),
              SizedBox(child:
                Text(productPrice.toString(),style: TextStyle(fontSize: 15),),),
              const SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    if (totalPrice <= 0) {
                      totalPrice = 0;
                    }
                    else {
                      productPrice += -1;
                      totalPrice = productPrice * 0.8;
                    };
                  });
                },
                child: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.maximize_rounded),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
