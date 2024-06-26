import 'package:dio/dio.dart';

class ApiServices{

  final _baseUrl='https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices(this.dio);
  Future<Map<String,dynamic>> get(path)async{
var response = await dio.get('$_baseUrl$path');
    return response.data;
  }
}