//Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch statement to print a message for each grade
import 'dart:io';

void main() {
  var grade;
  print("enter your mark");
  int markArabic = int.parse(stdin.readLineSync()!);

  if (markArabic >= 90) {
    grade = 'A';
  } else if (markArabic >= 80) {
    grade = 'B';
  } else if (markArabic >= 70) {
    grade = 'C';
  } else if (markArabic >= 60) {
    grade = 'D';
  } else {
    grade = "f";
  }

  switch (grade) {
    case "A":
      print("mark is A");
      break;
    case "B":
      print("mark is B");
      break;
    case "C":
      print("mark is  C");
      break;
    case "D":
      print("mark is D");
      break;
    default:
      print(" mark is F ");
  }
}
