import 'dart:mirrors';

class Phone {
  @deprecated
  void activate() {
    turnon();
  }

  void turnon() {
    print("turn on");
  }
}

class AnotherClass {
  @override
  noSuchMethod(Invocation invocation) {
    print('No such method');
  }
}

@Todo("John", "need to make it done soon", "today")
void doSomething() {
  print("do it!");
}

class Todo {
  final String who;
  final String what;
  final String when;

//three arguments in the constructor
  const Todo(this.who, this.what, this.when);
}

void main(List<String> args) {
  var p = new Phone();
  p.activate();
  p.turnon();

  dynamic ac = new AnotherClass();
  ac.message();
}
