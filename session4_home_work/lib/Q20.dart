// Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they have a parent. Use a switch statement on an area variable (general or restricted) to decide what message to print

void main() {
  int age = 16;
  bool hasParent = true;
  String area = "general";
  if (age < 18) {
    if (hasParent == true) {
      print("access");
    } else {
      print("not access");
    }
  } else {
    print("Access");
  }
  switch (area) {
    case "general":
      print("access");
      break;
    case "restricted":
      if (age < 18 || hasParent) {
        print("access");
      } else {
        print("not access");
      }
  }
}
