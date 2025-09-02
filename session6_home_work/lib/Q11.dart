//Create a function that takes a required product name and an optional discount percentage. If the discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'.
void main() {
  products(name: "milk");
}

void products({required String name, double? discount = 0}) {
  if (discount! > 0) {
    print("Product has discount % $discount");
  } else {
    print("Product has no discount");
  }
}
