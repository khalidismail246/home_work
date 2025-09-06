// Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest numbers, and then calculate the difference between them.
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print("enter number $i");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int largestNumbers = numbers.first;
  int smallestNumber = numbers.first;
  for (var num in numbers) {
    if (num >= largestNumbers) {
      largestNumbers = num;
    } else if (smallestNumber > num) {
      smallestNumber = num;
    }
  }
  print("smallestNumber is : $largestNumbers");
  print("smallestNumber is : $smallestNumber");
  var result = largestNumbers - smallestNumber;
  print(result);
}
