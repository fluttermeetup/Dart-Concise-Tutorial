void main(List<String> args) {
  var a = new Set();
  a
    ..add("dart")
    ..add("flutter")
    ..add("java")
    ..add(1)
    ..add("dart"); //repeated and won't be added

  print(a);

  var b = new Set<String>();
  b.addAll(["dart", "flutter", "java", "C", "C++", "C#"]);
  print(b);
  // b.add(1); //value must be a string

  print(b.contains("dart"));
  print(b.containsAll(["dart", "flutter"]));
  print(b.containsAll(["dart", "swift"]));
  print('b=>$b');
  print(a.difference(b));
  print(a.intersection(b));
  print(b.lookup("dart"));

  print(b.firstWhere((element) => element == "C#"));
}
