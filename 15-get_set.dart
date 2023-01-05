class Person01 {
  late String _name;

  set pName(String value) {
    _name = value;
  }

  String get pName {
    return "person name is $_name";
  }
}

class Person02 {
  late String _name;

  set pName(String name) => _name = name;
  String get pName => "person name is ${_name}";
}

void main(List<String> args) {
  var p01 = Person01();
  p01.pName = 'Jean';
  print(p01.pName);

  var p02 = Person02();
  p02.pName = 'Mike';
  print(p02.pName);
}
