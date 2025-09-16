// Create a class Product with private fields _name and _price.- Reject empty names and negative prices in setters.- Add a computed getter discountedPrice that returns the price with a 10% discount applied.- In main(), demonstrate setting values and printing the original and discounted price .
import 'product.dart';

void main() {
  Product product1 = Product();
  product1.name = "milk";
  product1.price = 150;
  print("original price = ${product1.price}");
  print("discount price = ${product1.discountedPrice()}");
}
