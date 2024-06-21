import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(
    super.errorMessage,
  );

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Request was canceled with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('ConnectionError with ApiServer');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('Unexpected error');
      default:
        return ServerFailure('oops there was an error, please try again !');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request Not Found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try again !');
    } else {
      return ServerFailure('oops there was an error, please try again !');
    }
  }
}
