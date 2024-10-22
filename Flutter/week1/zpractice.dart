/*
void main() {
  Point point1 = Point(0, 0);
  point1.translatePoint(1, 1);
  print(point1.toString());
}

class Point {
  final int x;
  final int y;
  Point(this.x, this.y);
  
  void translatePoint(int dx, int dy) {
    this.x += dx;
    this.y += dy;
  }

  @override
  String toString() {
    return "(${x},${y})";
  }
}
*/



/*
class Shape {
  int width;
  int height;
}
*/


class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  @override
  String toString() {
    return "x= $x - y= $y";
  }

  Point translate(int dx, int dy) {
    return Point(x + dx, y + dy);
  }
}

main() {
  Point p1 = Point(1, 2);
  print(p1);
  Point p2 = p1.translate(3, 4);
  print(p2);
}


