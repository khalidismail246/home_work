// Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many timeseach name appears. Print only the names that appear more than once
void main() {
  Map<String, int> duplicate = {};
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  for (var item in names) {
    duplicate[item] = (duplicate[item] ?? 0) + 1;
  }
  print(duplicate);
}
