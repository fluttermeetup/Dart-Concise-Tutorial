void main(List<String> args) {
  int a = 20001;
  print(a);

  double b = 1.234;
  print(b);

  print([a, b]);

  num c = 12.3e12;
  print(c);

  //conversion
  int d = int.parse("123456");
  print(d);
  double e = double.parse("1234.45567");
  print(e);

  String f1 = 12345.toString();
  String f2 = 1234.12334.toString();
  print([f1, f2]);

  double g = 123.556;
  int g0 = g.toInt(); //no round
  print([g, g0]);

  var h1 = 100.toRadixString(2);
  var h2 = 20.toRadixString(2);
  print(h1);
  print(h2);
  print(100 & 20);
  print(100 | 20);

  var k = 9;
  print(~k);
}
