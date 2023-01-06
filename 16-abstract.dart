abstract class Person {
  void printName() {
    print("person's name");
  }
}

class Teacher01 extends Person {}

class Teacher02 extends Person {
  @override
  void printName() {
    super.printName();
    print("teacher's name");
  }
}

class Student implements Person {
  @override
  void printName() {
    // super.printName(); // no super object when using "implenments"
    print("student's name");
  }
}

void main(List<String> args) {
  // Person p01 = Person(); // cannot create a Person instance as it is an abstract class

  Teacher01 t01 = Teacher01();
  t01.printName();

  Teacher02 t02 = Teacher02();
  t02.printName();

  Student s = Student();
  s.printName();
}
