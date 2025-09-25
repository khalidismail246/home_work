// Model shapes to compute total paintable area and cost
// Provide a general shape type (concrete class) with an area() method that can be overridden.
// Implement at least three concrete shape types with encapsulated dimensions and validated constructors (invalid → print; keep previous).
void main() {
  List<Shape> shapes = [
    Rectangle(hieght: 15, wieght: 20),
    Square(side: 10),
    triangle(hieght: 10, wieght: 15),
  ];
  var totalArea = 0.0;
  var totalPrice = 0.0;
  for (var Shape in shapes) {
    totalArea = totalArea + Shape.area();
  }
  print(totalArea);
  if (totalArea <= 50) {
    totalPrice = totalArea * 1.5;
  } else if (totalArea <= 150) {
    totalPrice = (50 * 1.5) + (totalArea - 50) * 1.25;
  } else {
    totalPrice = (50 * 1.5) + (100 * 1.25) + (totalArea - 150) * 1.0;
  }
  print(totalPrice);
}

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double _hieght = 0;
  double _wieght = 0;
  Rectangle({required double hieght, required double wieght}) {
    if (hieght > 0 && wieght > 0) {
      this._hieght = hieght;
      this._wieght = wieght;
    }
  }
  @override
  double area() {
    return _hieght * _wieght;
  }
}

class Square extends Shape {
  double _side = 0;
  Square({required double side}) {
    if (side > 0) {
      this._side;
    }
  }
  @override
  double area() {
    return _side * _side;
  }
}

class triangle extends Shape {
  double _hieght = 0;
  double _wieght = 0;
  triangle({required double hieght, required double wieght}) {
    if (hieght > 0 && wieght > 0) {
      this._hieght = hieght;
      this._wieght = wieght;
    }
  }
  @override
  double area() {
    return 1 / 2 * _hieght * _wieght;
  }
}
