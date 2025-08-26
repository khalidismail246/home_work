// Create a program that calculates the factorial of 6 and prints the result
void main() {
  int number = 6;
  int result = 1;
  while (number > 0) {
    result *= number;
    number--;
  }
  print(result);
}
