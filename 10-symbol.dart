import 'dart:mirrors';

void main(List<String> args) {
  //A Symbol object represents an operator or identifier declared in a Dart program
  Symbol libName = new Symbol("dart.math");
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(libName);
  libraryMirror.declarations.forEach((key, value) {
    print("$key : $value");
  });
}
