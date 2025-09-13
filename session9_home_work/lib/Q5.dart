// Create a class Course with attributes title and duration (default = 3 months). Create two courses: one with custom duration and one with the default. Print both.
void main() {
  Course person1 = Course(title: "Dart", duration: "4 month");
  Course person2 = Course(title: "android");
  print("Course : ${person1.title} , duration : ${person1.duration}");
  print("Course : ${person2.title} , duration : ${person2.duration}");
}

class Course {
  String title;
  String duration;
  Course({required this.title, this.duration = "3 months"});
}
