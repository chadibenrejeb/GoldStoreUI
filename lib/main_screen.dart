import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()..getPrices(), // bech awel man7el page nal9a el PRICES
      child: BlocConsumer<MainCubit, States>(
        listener:(context , state){

        },
        builder: (context, state) {
          final cubit = MainCubit.get(context);

          return Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Gold Column
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/gold.png',
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                        const SizedBox(height: 20),
                        if (state is PricesState)
                          Text(
                            "Gold: ${state.goldPrice} TND",
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 12,
                            ),
                          )
                        else if (state is InitState)
                          const CircularProgressIndicator(),
                      ],
                    ),
                  ),
                  // Silver Column
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/silver.png',
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                        const SizedBox(height: 20),
                        if (state is PricesState)
                          Text(
                            "Silver: ${state.silverPrice} TND",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 12,
                            ),
                          )
                        else if (state is InitState)
                          const CircularProgressIndicator(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                cubit.getPrices();
              },
              child: const Icon(Icons.refresh),
            ),
          );
        },
      ),
    );
  }
}
