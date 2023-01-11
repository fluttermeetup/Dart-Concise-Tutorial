import 'package:dio/dio.dart';

void main(List<String> args) {
  //synchronize
  var dio = Dio();
  dio.get("http://google.com").then((response) => print(response.data));

  print("\n\n~~~~~~~~~~~~~~~~~~~~~~~~\n\n");
}
