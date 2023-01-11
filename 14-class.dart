class Point01 {}

class Point02 {
  num x;
  num y;
  Point02(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

class Point03 {
  num x;
  num y;
  Point03(this.x, this.y);
}

class Point04 {
  int x;
  int y;
  var newValue;

  Point04(this.x, this.y) : newValue = {x: x, x: y};
}

class Point05 {
  num x;
  num y;

  Point05.fromJson(Map json) {
    x = json["x"];
    y = json["y"];
  }
}

class Point06 {
  num x;
  num y;

  Point06(this.x, this.y);
  Point06.fromJson(Map json) : this(json["x"], json["y"]);
}

void main(List<String> args) {
  Point01 p01 = Point01();
  print(p01);

  Point02 p02 = Point02(10, 20);
  print([p02.x, p02.y]);

  Point02 p03 = Point02(30, 40);
  print([p03.x, p03.y]);

  Point04 p04 = Point04(50, 60);
  print([p04.x, p04.y, p04.newValue]);

  Point05 p05 = Point05.fromJson({"x": 70, "y": 80});
  print([p05.x, p05.y]);

  Point06 p06 = Point06.fromJson({"x": 90.0, "y": 100.0});
  print([p06.x, p06.y]);
}
