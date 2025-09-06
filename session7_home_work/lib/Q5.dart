// Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to 10, then calculate the sum of all results
import 'dart:io';

void main() {
  print("enter your number ");
  int number = int.parse(stdin.readLineSync()!);
  int sumAllResult = 0;
  for (int i = 1; i <= 10; i++) {
    int result = i * number;
    print("$i * $number = $result ");
    sumAllResult = sumAllResult + result;
  }
  print("total results = $sumAllResult");
}
