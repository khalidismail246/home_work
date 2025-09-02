// Create a function that takes two integers as parameters and prints which one is larger.
void main() {
  print(largeNumber(number1: 50, number2: 50));
}

int largeNumber({required number1, required number2}) {
  if (number1 >= number2) {
    return number1;
  } else {
    return number2;
  }
}
