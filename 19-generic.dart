/// definted a function using generic
Map<K, V> addKeyValue<K, V>(K key, V val) {
  print("$key : $val");
  var m = Map<K, V>();
  m[key] = val;
  return m;
}

class Phone01<T> {
  final T phoneNumber;
  Phone01(this.phoneNumber);
}

class Phone02<T extends IOSPhone> {
  final T mobile;
  Phone02(this.mobile);
}

class IOSPhone {
  void startup() {
    print("IOS Phoen startup");
  }
}

void main(List<String> args) {
  // use built-in generics
  var l = List<String>.filled(0, "", growable: true);
  l.add('xxx');
  l.add("yyy");
  l.add("zzz");
  print(l);

  var m = Map<int, String>();
  m[1] = "xxx";
  m[2] = "yyy";
  print(m);

  // call function with generic
  var kv = addKeyValue("k0001", "any values");
  print(kv);

  var p11 = Phone01<String>("abcdefg");
  print(p11.phoneNumber);

  var p12 = Phone01<int>(1234567);
  print(p12.phoneNumber);

  var p2 = Phone02(IOSPhone());
  p2.mobile.startup();
}
