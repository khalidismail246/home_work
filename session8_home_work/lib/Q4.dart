// Class with Default Attribute Value - Create a class Product with attributes name and price.  Give price a default value of 0. - Create two objects: one with a custom price and one with the default price. Print their details
void main() {
  Product product1 = Product();
  product1.name = "milk";
  product1.price = 15.5;
  print("${product1.name} : ${product1.price}");
  Product product2 = Product();
  product2.name = "pen";
  print("${product2.name} : ${product2.price}");
}

class Product {
  String? name;
  double price = 0;
}
