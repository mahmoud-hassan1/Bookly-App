import 'package:dio/dio.dart';

abstract class Failure{
  String errorMessage;
  Failure(this.errorMessage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioError ){
      switch(dioError.type){
      
        case DioExceptionType.connectionTimeout:
          return ServerFailure("Connection timed out");
        case DioExceptionType.sendTimeout:
           return ServerFailure("Send timed out");
        case DioExceptionType.receiveTimeout:
           return ServerFailure("Receive timed out");
        case DioExceptionType.badCertificate:
          return ServerFailure("Receive timed out");
        case DioExceptionType.badResponse:
         return ServerFailure.fromResponse(dioError.response!.statusCode, dioError.response);
        case DioExceptionType.cancel:
           return ServerFailure("Request canceled");
        case DioExceptionType.connectionError:
          return ServerFailure("Connection error");
        case DioExceptionType.unknown:
          return ServerFailure("Some thing went wrong please try again later");
        default: 
          return ServerFailure("Some thing went wrong please try again later");
      }
  }
  factory ServerFailure.fromResponse(int? statuesCode,dynamic response){
    if(statuesCode == 400 || statuesCode == 401 || statuesCode == 403){
      return  ServerFailure(response['error']['message']);
  }else if (statuesCode ==404){
     return ServerFailure("Not Found");
  }
  else if (statuesCode == 500){
     return ServerFailure("Server error ,Please try again Later"); 
  }
  else{
    return ServerFailure("Something went wrong ,Please try again Later");
  }
  }
}