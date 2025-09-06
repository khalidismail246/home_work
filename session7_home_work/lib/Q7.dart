//Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains and how many characters (excluding spaces)
import 'dart:io';

void main() {
  print("enter your short word");
  String? word = stdin.readLineSync();
  int numberOfCharacters = 0;
  if (word != null) {
    var wordSplit = word.split(" ");
    print("number of words :  ${wordSplit.length}");
    for (var item in wordSplit) {
      var characters = item.length;
      numberOfCharacters = numberOfCharacters + characters;
    }
  }
  print("number of characters :  $numberOfCharacters");
}
