import 'package:dio/dio.dart';
import 'package:friendly_custom_bets_app/business/authentication/authentication_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../interceptors/authentication_interceptor.dart';

part 'authentication_client.g.dart';

@RestApi(baseUrl: "https://$auth0Domain/userinfo")
abstract class AuthenticationClient {
  static AuthenticationClient? _singleton;
  static final Dio _dio = Dio();

  factory AuthenticationClient() {
    _dio.interceptors.add(AuthenticationInterceptor());

    _singleton ??= _AuthenticationClient(_dio);

    return _singleton!;
  }

  @GET("/userinfo", autoCastResponse: false)
  Future<dynamic> getUserDetails();
}
