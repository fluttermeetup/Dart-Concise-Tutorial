void main(List<String> args) {
  String a = "😀";
  print(a.length);
  print(a.runes.length);

  Runes b = new Runes('\u{1f596} \u2665 \u2764 \u{1f499}');
  print(b);
  var c = String.fromCharCodes(b);
  print(c);
}
