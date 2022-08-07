import 'package:dio/dio.dart';
import 'package:friendly_custom_bets_app/business/authentication/authentication_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_client.g.dart';

@RestApi(baseUrl: "https://$auth0Domain/userinfo")
abstract class AuthenticationClient {
  static AuthenticationClient? _singleton;
  static final Dio _dio = Dio();

  static setAuthorizationToken(String accessToken) {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  factory AuthenticationClient() {
    _singleton ??= _AuthenticationClient(_dio);

    return _singleton!;
  }

  @GET("/userinfo", autoCastResponse: false)
  Future<dynamic> getUserDetails();
}
