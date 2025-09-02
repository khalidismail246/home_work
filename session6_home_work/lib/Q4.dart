// Create a program with a map of student names to their marks. Print the name of the student with the highest mark
void main() {
  List<Map<String, String>> students = [
    {"name": "Khalid", "mark": "B"},
    {"name": "Ahmed", "mark": "c"},
    {"name": "Mina", "mark": "D"},
    {"name": "Mohamed", "mark": "F"},
    {"name": "ALi", "mark": "A"},
  ];
  for (int i = 0; i < students.length; i++) {
    if (students[i]["mark"] == "A") {
      print("name : ${students[i]["name"]} ,  mark: ${students[i]["mark"]} ");
    }
  }
}
