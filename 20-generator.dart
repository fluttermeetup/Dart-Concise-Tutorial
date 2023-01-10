import 'dart:async';

Iterable<int> generateTo(int n) sync* {
  print("start");
  int m = 0;
  while (m < n) {
    yield m++; // yield waits for the result of moveNext
  }
  print("end");
}

Iterable<int> generateFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* generateFrom(n - 1);
  }
}

Stream<int> asyncGenerateTo(int n) async* {
  print("start");
  int m = 0;
  while (m < n) {
    yield m++; // yield waits for the result of moveNext
  }
  print("end");
}

void main(List<String> args) {
  // sync generator
  var it = generateTo(10).iterator;
  while (it.moveNext()) {
    print(it.current);
  }

  //streaming
  asyncGenerateTo(5).listen((data) {
    print(data);
  });

  //subscrption
  StreamSubscription sub = asyncGenerateTo(5).listen(null);
  sub.onData((data) {
    print(data);
  });

  //recursion
  var rec = generateFrom(10).iterator;
  while (rec.moveNext()) {
    print("rec = ${rec.current}");
  }
}
