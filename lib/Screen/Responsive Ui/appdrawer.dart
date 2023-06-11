import 'package:flutter/material.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Text('Hello Mubeen '),
                        Icon(Icons.favorite,size: 100,)
                      ],
                    ),
                  )

              )
            ],
          ),
      ),
    ) ;
  }
}
