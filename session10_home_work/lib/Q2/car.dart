class Car {
  String? _brand;
  int? _years;
  set brand(String brand) {
    if (brand.isEmpty) {
      print("brand is empty , error 404");
    } else {
      this._brand = brand;
    }
  }

  set years(int years) {
    if (years < 1886) {
      print("car is old , error 404");
    } else {
      this._years = years;
    }
  }

  String get brand => this._brand!;
  int get years => this._years!;
}
