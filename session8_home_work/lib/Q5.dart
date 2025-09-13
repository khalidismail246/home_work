//. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest number and the second largest number (without sorting the list).
import 'dart:io';

void main() {
  List numbers = [1, 2, 3, 4, 5];
  int largest = 0;
  int secondLargest = 0;
  // for (int i = 1; i <= 6; i++) {
  //   print("enter number $i");
  //   int num = int.parse(stdin.readLineSync()!);
  //   numbers.add(num);
  // }
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } else if (secondLargest < numbers[i] && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }
  print("[ $largest ,$secondLargest ]");
}
