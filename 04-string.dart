void main(List<String> args) {
  String a = 'a: flutter meetup ottawa';
  print(a);

  String b = "b: flutter meetup ottawa";
  print(b);

  //string template
  var c = 123456;
  print(c);

  String d = "d: Flutter meetup Ottawa: ${a}";
  print(d);

  var e = 'hello' + ' ' + 'flutter meetup ottawa';
  print(e);

  e = 'hello' ' ' 'flutter meetup ottawa';
  print(e);
  e = 'hello'
      ' '
      'flutter meetup ottawa';
  print(e);

  e = '''
  Hello
  Flutter Meetup Ottawa

''';
  print(e);

  e = """
  Hello
  Flutter Meetup Ottawa
""";
  print(e);

  var f1 = 'hello \n flutter meetup ottawa';
  print(f1);

  var f2 = r'hello \n flutter meetup ottawa';
  print(f2);

  var g = "Hello  Flutter Meetup Ottawa";
  print(g.contains("Meet"));
  print(g.startsWith("Hel"));
  print(g.endsWith("Ottawa"));
  print(g.indexOf("up"));

  print(g.substring(0, 5));
  print(g.split(" "));
  print(g.length);
  print(g[0]);
  print(g.toLowerCase());
  print(g.toUpperCase());

  var sb = StringBuffer();
  sb
    ..write("hello ")
    ..writeAll(["Flutter ", "meetup "])
    ..write("Ottawa");
  print(sb);
}
