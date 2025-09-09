// Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains.  Then print the shortest word and the longest word from the sentence
import 'dart:io';

void main() {
  print(" enter sentence ");
  String? sentence = stdin.readLineSync();
  var textSplit = sentence!.split(" ");
  //length list in value textsplit = numbers of words
  print("number of words :  ${textSplit.length}");
  //Ascending order of the number of letters in words
  textSplit.sort(((a, b) => a.length.compareTo(b.length)));
  print(
    "shortest word : ${textSplit.first} \n longest word : ${textSplit.last} ",
  );
  //another answer
  // String largestWord = textSplit.first;
  // String shortestWord = textSplit.first;
  // for (int i = 0; i < textSplit.length; i++) {
  //   if (textSplit[i].length > largestWord.length) {
  //     largestWord = textSplit[i];
  //   } else if (textSplit[i].length < largestWord.length) {
  //     shortestWord = textSplit[i];
  //   }
  // }
  // print("shortest word : ${shortestWord} \n longest word : ${largestWord} ");
}
