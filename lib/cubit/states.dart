abstract class States {}

class InitState extends States {}

class PricesState extends States {
  final double goldPrice;
  final double silverPrice;

  PricesState(this.goldPrice, this.silverPrice);
}
