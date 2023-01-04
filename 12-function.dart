void main(List<String> args) {
  print(add1(1));

  print(add2(1));
  print(add2(1, 10));
  print(add2(1, 10, 100));

  print(add3(x: 1, y: 10, z: 100));

  //define a function inside a function
  int add4(int x) {
    return x + 1;
  }

  print(add4(1));

  //call a returned function
  var add = doAdd(1);
  print(add(5));
}

int add1(int x) {
  return x + 1;
}

int add2(int x, [int y = 1, int z = 2]) {
  return x + y + z;
}

int add3({int x = 0, int y = 0, int z = 0}) {
  return x + y + z;
}

//return a function
Function doAdd(int x) {
  return (int y) => x + y;
}
