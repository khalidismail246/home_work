//Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user guess up to 3 times. If they fail, reveal the correct number
import 'dart:io';

void main() {
  int number = 14;
  bool flag = false;
  for (int i = 3; i > 0; i--) {
    print("guess numbers from 1 to 20 , You have $i attempts");
    int guessNumbers = int.parse(stdin.readLineSync()!);
    if (guessNumbers <= 20 && guessNumbers > 0) {
      if (number == guessNumbers) {
        print("correct");
        flag = true;
        // end loop
        break;
      } else {
        print("no coorect");
      }
    } else {
      print("number is between 1 to 20");
    }
  }
  if (flag == false) {
    print("number is :   $number");
  }
}
