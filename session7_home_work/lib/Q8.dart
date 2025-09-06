//Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also print the largest digit

import 'dart:io';

void main() {
  print("enter you number");
  String? number = stdin.readLineSync();
  var numberSplit = number!.split("");
  var sum = 0;
  var largestNumber = 0;
  for (int i = 0; i < numberSplit.length; i++) {
    int digit = int.parse(number[i]);
    sum = sum + digit;
    if (digit > largestNumber) {
      largestNumber = digit;
    }
  }
  print("largest Number is : $largestNumber");
  print("sum digit number is : $sum");
}
