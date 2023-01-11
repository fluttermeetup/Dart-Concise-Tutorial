import 'package:dio/dio.dart';

void main(List<String> args) async {
  var dio = Dio();

  Response<String> response = await dio.get("http://google.com");
  print(response.data);

  print("\n\n~~~~~~~~~~~~~~~~~~~~~~~~\n\n");
}
