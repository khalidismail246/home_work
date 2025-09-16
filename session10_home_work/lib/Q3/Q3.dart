//Create a class Grade with a private field _score.- The setter should only accept values 0–100, otherwise print 'Invalid score'.
//- Add a getter and a computed getter isPass that returns true if score ≥ 50.-
// In main(), demonstrate updating the score multiple times and printing results
import 'grade.dart';

void main() {
  Grade student = Grade();
  student.score = 25;
  print("isPass : ${student.isPass()}");
  student.score = 88;
  print("isPass : ${student.isPass()}");
  student.score = 0;
  print("isPass : ${student.isPass()}");
  student.score = 100;
  print("isPass : ${student.isPass()}");
}
