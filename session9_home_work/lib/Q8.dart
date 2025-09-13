// Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also print the total count of unique words
import 'dart:io';

void main() {
  int count = 0;
  Map<String, int> duplicateWords = {};
  print("enter sentence");
  String? sentence = stdin.readLineSync();
  var sentenceSPlit = sentence!.split(" ");
  for (var word in sentenceSPlit) {
    duplicateWords[word] = (duplicateWords[word] ?? 0) + 1;
  }
  duplicateWords.forEach((key, value) {
    if (value == 1) {
      count++;
      print("$key : $value");
    }
  });
  print("total count of unique words : $count");
}
