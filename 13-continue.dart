void main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    if (i < 5) {
      continue;
    }
    print(i);
  }

  // continue to a "go to" location
  String command = "close";
  switch (command) {
    case "open":
      print("open");
      break;
    case "close":
      print("close");
      continue doClose;
    case "pause":
      print("pause");
      break;
    doClose: //label
    case ("do_close"):
      print("do something when close");
      break;
    case "shutdown":
      print("shutdown");
      break;
    default:
      print("do nothing");
      break;
  }
}
