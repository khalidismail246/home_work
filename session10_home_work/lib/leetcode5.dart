void main() {
  print(isAnagram("anagram", "nagaram"));
  print(isAnagram("rat", "cat"));
}

bool isAnagram(String s, String t) {
  var sSplit = s.split("");
  var tSplit = t.split("");
  if (sSplit.length != tSplit.length) {
    return false;
  }
  tSplit.sort();
  sSplit.sort();
  for (int i = 0; i < sSplit.length; i++) {
    if (sSplit[i] != tSplit[i]) {
      return false;
    }
  }
  return true;
}
