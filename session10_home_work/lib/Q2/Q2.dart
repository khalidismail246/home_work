//Create a class Car with private fields _brand and _year.- Add setters that reject empty brand names and years less than 1886 (first car invention).- Add getters for both.
//- In main(), demonstrate creating two car objects (one valid, one invalid input).

import 'car.dart';

void main() {
  Car car1 = Car();
  car1.brand = "KIA";
  car1.years = 2015;
  print("brand : ${car1.brand} , years : ${car1.years}");
  Car car2 = Car();
  car2.years = 1875;
  car2.brand = "";
}
