enum Status { none, running, stopped, paused, closed }

void main(List<String> args) {
  Status.values.forEach((element) {
    print("$element - index: ${element.index}");
  });
}
