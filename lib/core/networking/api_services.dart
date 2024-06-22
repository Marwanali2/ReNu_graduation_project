import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl =
      "https://api-service.cloud/recycle/public_html/api"; 
  //"http://127.0.0.1:8000/api/"http://192.168.255.18/api
  final Dio _dio;
  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl$endpoint');

    return response.data;
  }

  // ApiServices()
  //     : dio = Dio(BaseOptions(
  //         baseUrl: baseUrl,
  //         connectTimeout: const Duration(seconds: 10000), // 10 seconds
  //         receiveTimeout: const Duration(seconds: 10000), // 10 seconds
  //       ));
}
// i get this error " Error: SocketException: Connection refused (OS Error: Connection refused, errno = 111), address = 127.0.0.1, port = 51884"
// so i want to know how to fix this error and how to connect to my local server  using my android device
