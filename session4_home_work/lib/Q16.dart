//Write a Dart program that evaluates three integer variables with different logical and comparison expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on one of the expressions.
void main() {
  int num1 = 18;
  int num2 = 25;
  int num3 = 24;
  bool comparison1 = num1 >= num2;
  print(comparison1);
  bool comparison2 = num1 + num3 <= num2;
  print(comparison2);
  bool comparison3 = num3 * num2 >= num1;
  print(comparison3);
  if (comparison3) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
