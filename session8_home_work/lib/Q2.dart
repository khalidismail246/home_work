// Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor to set the values when creating the object. - In main(), create two car objects with different data and print their details.
void main() {
  Car car1 = Car(brand: "KIA", years: 2024);
  print("car 1 is brand : ${car1.brand} \n car 1 is years : ${car1.years}");
  Car car2 = Car(brand: "BMW", years: 2025);
  print("car 2 is brand : ${car2.brand} \n car 2 is years : ${car2.years}");
}

class Car {
  String brand;
  int years;
  Car({required this.brand, required this.years});
}
