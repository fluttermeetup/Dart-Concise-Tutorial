void main(List<String> args) {
  //not set initial value using var
  var a;
  a = 'flutter meetup Ottawa';
  print(a);

  a = 123;
  print(a);

  a = true;
  print(a);

  a = {'key': 'value'};
  print(a);

  a = ['abc'];
  print(a);

  // if var variable is initialized
  var a1 = "flutter meetup ottawa";
  print(a1);
  a = 123;
  print(a1);

  //using Object for dynamic any type
  Object b = 'Flutter meetup Ottawa';
  print(b);

  b = 123;
  print(b);

  b = [12345];
  print(b);

  //b.p(); -> Object b doesn;t have method p(), the Dart compiler shows the error

  dynamic c = "flutter meetup ottawa";
  print(c);

  c = 1234;
  print(c);

  //c.p(); // no error is detected by compiler, but will receive an error in  runtime.

  String d;
  d = 'flutter meetup ottawa';
  print(d);
  // d = 123; // cannot change the type

  String e0 = 'flutter meetup ottawa';
  print(e0);
  int e1 = 123;
  print(e1);
  double e2 = 0.12;
  print(e2);
  num e3 = 1000.012;
  print(e3);
  bool e4 = false;
  print(e4);
  DateTime e5 = new DateTime.now();
  print(e5);
  List e6 = [e1, e2, e3, e4, e5];
  print(e6);

  // default value: null
  var f1;
  print(f1);
  assert(f1 == null);
  String f2;
  // print(f2); // must assign a value
}
