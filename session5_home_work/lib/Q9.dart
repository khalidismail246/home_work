// Create a program with a page path stored in a variable. If the path is '/', print Home. For any other value, print 404.
void main() {
  String path = "/";
  Map<String, dynamic> pagePath = {"/": "Home", "/profile": "profile page"};
  if (path == "/") {
    print(pagePath["/"]);
  } else {
    print("error 404");
  }
}
