import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TODAY",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              Text(
                "PRICE",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  shadows: [
                    BoxShadow(
                        color : Colors.yellow[100]! ,
                        offset : Offset(
                          0,0
                        )

                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Gold Column
            Column(
              children: [
                Image.asset(
                  'assets/images/gold.png',
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(height: 20),
                Text(
                  "Gold",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 8,
                    shadows: [
                      BoxShadow(
                        color: Colors.yellow[300]!,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                ),
                Text(
                  "270 TND",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 12,
                    shadows: [
                      BoxShadow(
                        color: Colors.yellow[300]!,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Silver Column
            Column(
              children: [
                Image.asset(
                  'assets/images/silver.png',
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(height: 20),
                Text(
                  "Silver",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 8,
                    shadows: [
                      BoxShadow(
                        color: Colors.yellow[300]!,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                ),
                Text(
                  "190 TND",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 12,
                    shadows: [
                      BoxShadow(
                        color: Colors.yellow[300]!,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
