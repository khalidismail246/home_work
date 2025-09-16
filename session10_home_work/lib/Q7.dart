//Ask the user to input a list of integers.
//- Print the largest number, the smallest number, and their difference.
//- Calculate the average of the list.
//- Print all numbers that are above the average.
//- Finally, print how many numbers are even and how many are odd in the list
import 'dart:io';

void main() {
  List<int> number = [];
  int sum = 0;
  int even = 0;
  int odd = 0;

  for (int i = 1; i <= 6; i++) {
    print("enter number $i");
    int num = int.parse(stdin.readLineSync()!);
    number.add(num);
    sum = sum + num;
    if (num % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  //- Calculate the average of the list
  double average = sum / number.length;
  number.sort(((a, b) => b.compareTo(a)));
  int largest = number.first;
  int smallest = number.last;
  //Print the largest number, the smallest number, and their difference.
  print("largest number: $largest");
  print("smallest number : $smallest");
  print("their difference : ${largest - smallest}");
  // Finally, print how many numbers are even and how many are odd in the list
  print("even : $even");
  print("odd : $odd");
  // Print all numbers that are above the average.
  for (var num in number) {
    if (num > average) {
      print(num);
    }
  }
}
