//Create a program that removes duplicate numbers from the
//list [5, 3, 5, 7, 3, 9] and prints how many unique numbers remain
void main() {
  List<int> number = [5, 3, 5, 7, 3, 9];
  List<int> duplicateRemoved = [];
  int duplicateNumber = 0;
  for (var num in number) {
    if (duplicateRemoved.contains(num)) {
      duplicateNumber++;
    } else {
      duplicateRemoved.add(num);
    }
    ;
  }
  print(duplicateRemoved);
  print("number of duplicate : $duplicateNumber");

  // another answer
  // List<int> number1 = [5, 3, 5, 7, 3, 9];
  // var noDuplicate = number.toSet();
  // print(noDuplicate);
  // var totalDuplicate = number1.length - noDuplicate.length;
  // print("number of duplicate : $totalDuplicate");
}
