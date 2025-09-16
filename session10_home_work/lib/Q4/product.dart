// Create a class Product with private fields _name and _price.
//- Reject empty names and negative prices in setters.
//- Add a computed getter discountedPrice that returns the price with a 10% discount applied.-
// In main(), demonstrate setting values and printing the original and discounted price;
class Product {
  String? _name;
  int? _price;
  set name(String name) {
    if (name.isEmpty) {
      print("name is empty , error 404 ");
    } else {
      this._name = name;
    }
  }

  set price(int price) {
    if (price < 0) {
      print("price is not correct");
    } else {
      this._price = price;
    }
  }

  String get name => this._name!;
  int get price => this._price!;
  double discountedPrice() {
    double result = _price! * (10 / 100);
    return result;
  }
}
