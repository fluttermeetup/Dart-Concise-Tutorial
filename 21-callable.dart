class IOSPhone {
  call(String number) {
    print("phone number is $number");
  }
}

void main(List<String> args) {
  IOSPhone().call("12345678");
}
