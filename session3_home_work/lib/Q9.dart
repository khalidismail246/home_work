void main() {
  //a) Create List> students with two items, each having name and grade.
  List<Map<String, dynamic>> students = [
    {"name": "khalid", "grade": 75},
    {"name": "ahmed", "grade": 88},
  ];

  //b) Print the grade of the second student using index and key.
  print(students[1]["grade"]);
  //c) Add both grades and print the average grade as double.
  num average = (students[0]["grade"] + students[1]["grade"]) / 2;
  print(average.toDouble());
}
