void main(List<String> args) {
  var a = new Map();
  a['name'] = "Flutter meetup Ottawa";
  print(a);
  a['web'] = 'flutter ottawa github';
  print(a);
  a[0] = 123;
  print(a);

  print(a.isEmpty);
  print(a.isNotEmpty);
  print(a.keys);
  print(a.values);
  print(a.length);
  print(a.entries);

  a.addAll({"first": "dart", "second": "flutter"});
  print(a);

  var b = new Map<int, String>();
  b[0] = "dart";
  b[1] = "flutter";
  print(b);
  // b["name"] = "dart"; //error, the type of key is defined as int

  var c = new Map();
  c.addEntries(a.entries);
  print(c);
}
