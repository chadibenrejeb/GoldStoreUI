import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:api_app/network/dio_helper.dart';
import 'states.dart';

class MainCubit extends Cubit<States> {
  MainCubit() : super(InitState());

  static MainCubit get(context) => BlocProvider.of(context);

  Future<void> getPrices() async {
    try {
      // Fetch gold price
      var goldValue = await DioHelper.getData('XAU/USD/');
      double goldPrice = goldValue.data['price'];

      // Fetch silver price
      var silverValue = await DioHelper.getData('XAG/USD/');
      double silverPrice = silverValue.data['price'];

      // Emit the states with both prices
      emit(PricesState(goldPrice, silverPrice));
    } catch (error) {
      print("Error fetching prices: $error");
    }
  }
}
