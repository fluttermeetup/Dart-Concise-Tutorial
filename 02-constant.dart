void main(List<String> args) {
  final String a = "a: flutter meetup ottawa";
  print(a);
  final b = 'flutter meetup ottawa';
  print("b: ${b}");
  // a = "new value"; // cannot re-assign a value

  const String c = "c: flutter meetup ottawa";
  print(c);
  // c = "another value"; //cannot re-assign a value

  // final var d = "flutter meetup ottawa"; // cannot be used for var

  // const var d = "flutter meetup ottawa"; // cannot be used for var
  const List ls1 = [1, 2, 3];
  print(ls1);
  const List ls2 = const [4, 2, 3];
  print(ls2);

  final dt1 = DateTime.now();
  print(dt1);

  // const dt2 = DateTime.now(); // must be a fix value for const

  final d1 = [1, 2, 3];
  final d2 = [1, 2, 3];
  print(identical(d1, d2)); // diffent address in memory

  const e1 = [1, 2, 3];
  const e2 = [1, 2, 3];
  print(identical(e1, e2)); //same address in memory
}
