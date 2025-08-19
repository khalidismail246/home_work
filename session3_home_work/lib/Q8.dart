void main() {
  // a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
  Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99};
  // b) Print book['title'], update price, and add a new key 'author'.
  print(book["title"]);
  book["price"] = 22;
  print(book["price"]);
  book["author"] = "jack";
  print(book["author"]);
  // c) Print all keys, values, and check if 'pages' exists as a key.
  print("key is ${book.keys}");
  print("vallues is ${book.values} ");
  print("contain 'page' ? ${book.containsKey("page")}");
}
