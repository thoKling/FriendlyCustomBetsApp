import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthenticationInterceptor extends Interceptor {
  static String accessToken = "";

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers['Authorization'] = 'Bearer $accessToken';
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
        // TODO: Handle this case.
        break;
      case DioErrorType.sendTimeout:
        // TODO: Handle this case.
        break;
      case DioErrorType.receiveTimeout:
        // TODO: Handle this case.
        break;
      case DioErrorType.response:
        _handleResponseCodeError(err);
        break;
      case DioErrorType.cancel:
        // TODO: Handle this case.
        break;
      case DioErrorType.other:
        // TODO: Handle this case.
        break;
    }
    handler.next(err);
  }

  void _handleResponseCodeError(DioError err) {
    switch (err.response!.statusCode) {
      case 401:
        Fluttertoast.showToast(
          msg: "Vous n'avez pas le droit d'accéder à cette ressource !",
        ); //TODO: lang
        break;
      default:
        Fluttertoast.showToast(
          msg: "Erreur inattendue: ${err.response!.statusCode.toString()} !",
        ); //TODO: lang
        break;
    }
  }
}
