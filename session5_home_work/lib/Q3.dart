//Create a program with a price of 180 and a flag showing the person is a student. If the person is a student and the price is 150 or more, reduce the price by 15. Print the final price
void main() {
  int price = 180;
  bool isStudent = true;
  if (isStudent == true && price >= 150) {
    var discount = price * (15 / 100);
    print("final price is : $discount");
  } else {
    print("Final price is : $price");
  }
}
