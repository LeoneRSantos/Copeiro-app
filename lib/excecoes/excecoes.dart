import 'package:dio/dio.dart';


abstract class  LocaleKeys {
  static const errorRequestCancelled = 'errorRequestCancelled';
  static const errorConnectionTimeout = 'errorConnectionTimeout';
  static const errorInternetConnection = 'errorInternetConnection';
  static const errorReceiveTimeout = 'errorReceiveTimeout';
  static const errorSendTimeout = 'errorSendTimeout';
  static const errorBadRequest = 'errorBadRequest';
  static const errorRequestNotFound = 'errorRequestNotFound';
  static const errorIntenalServer = 'errorIntenalServer';
  static const errorSomethingWentWrong = 'errorSomethingWentWrong';

}

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = LocaleKeys.errorRequestCancelled;
        break;
      case DioErrorType.connectTimeout:
        message = LocaleKeys.errorConnectionTimeout;
        break;
      case DioErrorType.receiveTimeout:
        message = LocaleKeys.errorReceiveTimeout;
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = LocaleKeys.errorSendTimeout;
        break;
      default:
        message = LocaleKeys.errorInternetConnection;
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return LocaleKeys.errorBadRequest;
      case 404:
        return LocaleKeys.errorRequestNotFound;
      case 500:
        return LocaleKeys.errorIntenalServer;
      default:
        return LocaleKeys.errorSomethingWentWrong;
    }
  }

  @override
  String toString() => message;
}
