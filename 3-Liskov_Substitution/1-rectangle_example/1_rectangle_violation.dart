abstract class Shape {
  double calcArea();
}

class Rectangle implements Shape {
  double? _height;
  double? _width;

  Rectangle([this._width, this._height]);

  void set width(double width) {
    this._width = width;
  }

  void set height(double height) {
    this._height = height;
  }

  double calcArea() {
    return _width! * _height!;
  }
}

class Square implements Shape {
  double? _side;

  Square([this._side]);

  void set width(double width) {
    _side = width;
  }

  void set height(double height) {
    _side = height;
  }

  double calcArea() {
    return _side! * _side!;
  }
}

// Client CODE
void main(List<String> args) {
  Shape rec = Rectangle();
  (rec as Rectangle).width = 5;
  rec.height = 2;
  if (rec.calcArea() == 10) print(rec.calcArea());

  rec = Square();
  (rec as Square).width = 5;
  rec.height = 2;

  if (rec.calcArea() == 10)
    print(rec.calcArea()); // doesnot print because the result is 4
}
