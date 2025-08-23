// Write a Dart program that simulates a simple router using a switch statement on a string path ('/',  '/products', '/profile', or other). Handle each case with appropriate output, including maps and null safety where needed.
void main() {
  String? path = "/";
  switch (path) {
    case "/products":
      print("products page");
      break;
    case "/":
      print("home page");
      break;
    case "/profile":
      print("profile home");
      break;
    case "/map":
      print("map page");
      break;
    case null:
      print("path is null");
    default:
      print(" there is error");
  }
}
