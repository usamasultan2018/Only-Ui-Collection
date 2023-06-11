import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DobPicker extends StatefulWidget {
  const DobPicker({Key? key}) : super(key: key);

  @override
  State<DobPicker> createState() => _DobPickerState();
}

class _DobPickerState extends State<DobPicker> {
  final first = [
    "Jan", "Feb", "Mar", "Apr",
    "May", "Jun", "Jul", "Aug",
    "Sep", "Oct", "Nov", "Dec",
  ];
  int SelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF2e7d32),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 35,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add,size: 35,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 35,),label: ''),
],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: Text(
              'Reports',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            )),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Select Month',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Color(0xFF424242)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFe0e0e0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: first.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 0,
                        ),
                        itemBuilder: (context, index) => Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    SelectIndex = index;
                                  });
                                },
                                child: Text(
                                  first[index],
                                  style: const TextStyle(fontSize: 18),
                                )),
                            Container(
                              height: 2,
                              width: 30,
                              color: SelectIndex == index
                                  ? Colors.black
                                  : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Select Year',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFeeeeee),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF2196f3), width: 3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '2022',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 177,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF2e7d32,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                  child: Text(
                'Check',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            )
          ],
        ),
      ),
    );
  }
}
//