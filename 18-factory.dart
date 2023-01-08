class Phone01 {
  void startup() {
    print("startup");
  }

  void shutdown() {
    print("shutdown");
  }
}

Phone01 phoneFactory(String name) {
  switch (name) {
    case "android":
      return AndroidPhone01();
    default:
      return IOSPhone01();
  }
}

class AndroidPhone01 extends Phone01 {
  void startup() {
    super.startup();
    print("Android Phone startup");
  }
}

class IOSPhone01 extends Phone01 {
  void startup() {
    super.startup();
    print("IOS Phone startup");
  }
}

abstract class Phone02 {
  factory Phone02(String name) {
    switch (name) {
      case "android":
        return AndroidPhone02();
      default:
        return IOSPhone02();
    }
  }

  void startup();
  void shutdown();
}

class AndroidPhone02 implements Phone02 {
  @override
  void startup() {
    print("Android Phone startup");
  }

  @override
  void shutdown() {
    print("Android Phone shutdown");
  }
}

class IOSPhone02 implements Phone02 {
  @override
  void startup() {
    print("IOS Phone startup");
  }

  @override
  void shutdown() {
    print("IOS Phone shutdown");
  }
}

void main(List<String> args) {
  var p01 = phoneFactory('android');
  p01.startup();
  p01.shutdown();

  var p02 = Phone02('ios');
  p02.startup();
  p02.shutdown();
}
