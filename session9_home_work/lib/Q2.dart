// Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns the temperature in Fahrenheit. In main(), create an object and print the converted value.
void main() {
  temperature tem1 = temperature(clesius: 30);
  print(tem1.toFahrenheit());
}

class temperature {
  double? clesius;
  temperature({required this.clesius});
  double toFahrenheit() {
    var fahrenheit = (clesius! * 9 / 5) + 32;
    return fahrenheit;
  }
}
