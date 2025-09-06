import 'dart:io';

void main() {
  print(isPalindrome(""));
}

bool isPalindrome(String s) {
  var lowerCaseWord = s.toLowerCase();
  if (lowerCaseWord == null || lowerCaseWord.isEmpty) {
    return false;
  }
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var number = "0123456789";
  var cleanWord = '';

  for (int i = 0; i < lowerCaseWord.length; i++) {
    String char = lowerCaseWord[i];
    if (letters.contains(char) || number.contains(char)) {
      cleanWord = cleanWord + char;
    }
  }
  var reverseWord = cleanWord.split("").reversed.join("");
  if (reverseWord == cleanWord) {
    return true;
  } else {
    return false;
  }
}
