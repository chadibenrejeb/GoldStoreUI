import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title : Center( child : const Text(
            "TODAY PRICE" ,
            style: TextStyle(
              color: Colors.yellow,
            ),
        ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset('assets/images/gold.png',
                  height: MediaQuery.of(context).size.height/6,
                  width: MediaQuery.of(context).size.width/2.5,
                ),
                Text("Gold" ,
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width/8 ,
                  shadows: [
                    BoxShadow(
                      color : Colors.yellow[300]! ,
                      offset: Offset(
                        1,1
                      )
                    )
                  ]
                ),
                ),
                Text("270 TND",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width/10 ,
                    shadows: [
                      BoxShadow(
                          color : Colors.yellow[300]! ,
                          offset: Offset(
                              1,1
                          )
                      )
                    ]
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
