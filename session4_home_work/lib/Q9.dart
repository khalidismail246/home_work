// Write a Dart program that removes duplicate items from a list using a Set. Compare the unique count with the original list length and print a message if duplicates were removed.
void main() {
  List<int> numbers = [1, 3, 4, 5, 4, 5, 5, 6];
  var transformationToSet = numbers.toSet();
  bool check = transformationToSet.length < numbers.length;
  if (check) {
    print("duplicates were removed");
  } else {
    print("duplicates weren't removed");
  }
}
