import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  final _baseUrl = "https://www.googleapis.com/books/v1/";

  Future<Map<String, dynamic>> Get({required String endPoint}) async {
    Response response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
