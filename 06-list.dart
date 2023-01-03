void main(List<String> args) {
  var l1 = [1, 2, 3, 4];
  print(l1); //[1, 2, 3, 4]
  print(l1.length);
  print(l1.first);
  print(l1.last);
  print(l1.isEmpty);
  print(l1.isNotEmpty);
  print(l1.reversed);

  l1.add(5);
  print(l1);
  l1.addAll([6, 7, 8]);
  print(l1);
  l1.insert(0, 10);
  print(l1);
  l1.insertAll(0, [11, 12, 13]);
  print(l1);
  for (var i = 0; i < l1.length; i++) {
    print("${i} : ${l1[i]}");
  }

  print(l1.indexOf(5));
  print(l1.indexWhere((val) => val == 10));

  print("\n------------");
  List<int> l2 = new List<int>.filled(2, 0, growable: true);
  l2
    ..add(1)
    ..add(2)
    ..add(3)
    ..add(4);
  print(l2); //[0, 0, 1, 2, 3, 4]

  List<int> l3 = new List<int>.filled(3, 0, growable: false);
  // l3.add(1); //throws error as the l3 is a length-fixed list
  print(l3);
}
