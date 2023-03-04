import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);

  factory ServerFailure.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.badCertificate:
        return ServerFailure("Bad Certificate");
      case DioErrorType.badResponse:
        return ServerFailure("Bad Response");
      case DioErrorType.cancel:
        return ServerFailure("Request Cancelled");
      case DioErrorType.connectionError:
        return ServerFailure("Connection Error");
      case DioErrorType.connectionTimeout:
        return ServerFailure("Connection Timeout With API Server");
      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive Timeout With API Server");
      case DioErrorType.sendTimeout:
        return ServerFailure("Send Timeout With API Server");
      case DioErrorType.unknown:
        return ServerFailure(DioErrorType.unknown.toString());
      default:
        return ServerFailure("Ops! Unexpected Error, Try Later!");
    }
  }
}
