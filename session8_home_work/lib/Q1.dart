//Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add amethod addNumbers() that prints the sum of the two numbers. - Create an object in main() and call the method
void main() {
  Calculator sumNumbers1 = Calculator(num1: 55, num2: 20);
  sumNumbers1.addNumbers();
}

class Calculator {
  int num1;
  int num2;
  Calculator({required this.num1, required this.num2});
  void addNumbers() {
    var sum = num1 + num2;
    print(sum);
  }
}
