// Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also count how many vowels it has
import 'dart:io';

void main() {
  //Take a word from the user.
  print("enter word");
  String? word = stdin.readLineSync();

  //Print the word reversed, and also count how many vowels it has
  if (word != null || word!.isNotEmpty) {
    String wordReverse = word.split("").reversed.join("");
    print(wordReverse);
    var wordSplit = wordReverse.split("");
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    int count = 0;
    for (var item in wordSplit) {
      if (vowels.contains(item)) {
        count++;
      }
    }
    print("vowels : $count");
  }
}
