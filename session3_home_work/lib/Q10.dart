void main() {
  // a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing after each.
  //receive other data type
  dynamic value1 = 25;
  print(value1);
  value1 = "khalid";
  print(value1);
  //var transfer to integer and don't receive other data type
  var value2 = 25;
  print(value2);

  //b) Create var greeting = 'Hi'; change it to another String and print.
  var value = "Hi";
  value = "khalid";
  print(value);
  //c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3)
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
