// Create a class Employee with attributes name and salary. Add a method giveRaise(int amount) that increases the salary. In main(), create an employee, give them a raise, and print the new salary.
void main() {
  Employee user1 = Employee(name: "ahmed", salary: 5000);
  user1.giveRaise(2000);
  print("user : ${user1.name} , salary : ${user1.salary}");
}

class Employee {
  String? name;
  int? salary;
  Employee({required this.name, required this.salary});
  int giveRaise(int amount) {
    salary = salary! + amount;
    return salary!;
  }
}
