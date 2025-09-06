//Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1 and n, and also print how many odd numbers were found.
import 'dart:io';

void main() {
  //Ask the user to input a number n
  print("enter number  n");
  int n = int.parse(stdin.readLineSync()!);
  int count = 0;
  //Print all odd numbers between 1 and n, and also print how many odd numbers were found,
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }
  print(" odd numbers : ${count} ");
}
