// Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if the number is even, false otherwise. In main(), test the method with one number.
void main() {
  NumberCheck num1 = NumberCheck(value: 18);
  print(num1.isEven());
}

class NumberCheck {
  int? value;
  NumberCheck({required this.value});
  bool isEven() {
    if (value! % 2 == 0) {
      return true;
    }
    return false;
  }
}
