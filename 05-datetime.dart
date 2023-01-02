void main(List<String> args) {
  var now = new DateTime.now();
  print(now);
  print(now.millisecondsSinceEpoch);
  print(now.millisecond);

  var d = new DateTime(2023, 01, 01, 18, 02);
  print(d);

  var utc = new DateTime.utc(2023, 01, 01, 18, 02);
  print(utc);

  var e = DateTime.parse("2023-01-01 18:02:20-0500");
  print(e);

  print(now.add(new Duration(minutes: 5)));
  print(now.add(new Duration(minutes: -5)));

  var diff = d.difference(utc);
  print(diff);
}
