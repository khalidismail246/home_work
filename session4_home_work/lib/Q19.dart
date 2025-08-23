// Write a Dart program that converts a list of names to a set of unique values. Create a map with counts of occurrences. Compare lengths and print a message if a specific name appears more than once
void main() {
  List<String> names = [
    "ahmed",
    "khalid",
    "mohamed",
    "mina",
    "ahmed",
    "tharwat",
    "khalid",
  ];
  var transformationToSet = names.toSet();
  Map<String, int> numberOfNames = {
    "ahmed": 2,
    "khalid": 2,
    "mohamed": 1,
    "mina": 1,
    "tharwat": 1,
  };
  if (names.length != transformationToSet.length) {
    print("There are repeated names.");
  } else {
    print("There aren't repeated names .");
  }
  print("ahmed : ${numberOfNames["ahmed"]}");
  print("khalid : ${numberOfNames["khalid"]}");
  print("mohamed : ${numberOfNames["mohamed"]}");
  print("mina : ${numberOfNames["mina"]}");
  print("tharwat : ${numberOfNames["tharwat"]}");
  if ((numberOfNames["ahmed"]!) > 0) {
    print("Number of repetitions is ${numberOfNames["ahmed"]}");
  }
}
