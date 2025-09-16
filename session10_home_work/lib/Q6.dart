//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid. An input string is valid if:
// 1. Open brackets must be closed by the same type of brackets.
//2. Open brackets must be closed in the correct order.
// 3. Every close bracket has a corresponding open bracket of the same type.
// Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → Vali
void main() {
  print(charactersCorrect(giveCharacter: '()'));
  print(charactersCorrect(giveCharacter: '()[]{}'));
  print(charactersCorrect(giveCharacter: '(]'));
  print(charactersCorrect(giveCharacter: '([)]'));
  print(charactersCorrect(giveCharacter: '{[]}'));
}

bool charactersCorrect({required String giveCharacter}) {
  var charSplit = giveCharacter.split("");
  List<String> charList = [];
  Map<String, String> characters = {'(': ')', '{': '}', '[': ']'};
  for (var char in charSplit) {
    if (characters.containsKey(char)) {
      charList.add(char);
    } else if (characters.containsValue(char)) {
      if (charList.isEmpty) {
        return false;
      } else {
        String charInverse = characters[charList.last]!;
        if (char == charInverse) {
          charList.removeLast();
        } else {
          return false;
        }
      }
    }
  }
  return charList.isEmpty;
}
