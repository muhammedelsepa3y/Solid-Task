abstract class Shape {
  void draw();
}

class Rectangle implements Shape {
  double width;
  double length;

  Rectangle({
    required this.width,
    required this.length,
  });

  @override
  void draw() {
    print('Drawing a rectangle with width: $width and length: $length');
  }
}

class Square implements Shape {
  double side;

  Square({
    required this.side,
  });
  @override
  void draw() {
    print('Drawing a square with side: $side');
  }
}

class Triangle implements Shape {
  double base;
  double height;

  Triangle({
    required this.base,
    required this.height,
  });

  @override
  void draw() {
    print('Drawing a triangle with base: $base and height: $height');
  }
}

class ShapeDrawer {
  void drawShape(Shape shape) {
    shape.draw();
  }
}

void main() {
  ShapeDrawer shapeDrawer = ShapeDrawer();
  shapeDrawer.drawShape(Rectangle(width: 10, length: 20));
  shapeDrawer.drawShape(Square(side: 10));
  shapeDrawer.drawShape(Triangle(base: 10, height: 20));
}
