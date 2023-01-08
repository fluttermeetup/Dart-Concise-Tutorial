///Mixins are a way of reusing a class’s code in multiple class hierarchies.

class Phone {
  void startup() {
    print("shartup");
  }

  void shutdown() {
    print("shutdown");
  }
}

class AndroidPhone extends Phone {
  void startup() {
    super.startup();
    print("android phone startup");
  }
}

class AndroidSystem {
  void call() {
    print("android system call");
  }
}

class WhatsApp {
  void sms() {
    print("WhatsApp message");
  }
}

class Sumsung extends AndroidPhone with AndroidSystem, WhatsApp {
  void startup() {
    super.startup();
    print("Sumsung startup");
  }
}

void main(List<String> args) {
  var ss = Sumsung();
  ss.startup();
  ss.call();
  ss.sms();
  ss.shutdown();
}
