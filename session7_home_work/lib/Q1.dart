// Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average. Then, check if the average is greater than 50 or not.
import 'dart:io';

void main() {
  //- Ask the user for three numbers.
  print("enter number 1");
  int num1 = int.parse(stdin.readLineSync()!);
  print("enter  number 2");
  int num2 = int.parse(stdin.readLineSync()!);
  print("enter number 3");
  int num3 = int.parse(stdin.readLineSync()!);
  //Print their sum and average
  var sumNumber = num1 + num2 + num3;
  print("sum numbers : $sumNumber");
  var average = sumNumber / 3;
  print("sum numbers : $average");
  //check if the average is greater than 50 or not
  if (average > 50) {
    print("average is greater than 50");
  } else {
    print("average isn't greater than 50");
  }
}
