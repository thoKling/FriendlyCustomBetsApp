//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_bet_api/src/serializers.dart';
import 'package:custom_bet_api/src/auth/api_key_auth.dart';
import 'package:custom_bet_api/src/auth/basic_auth.dart';
import 'package:custom_bet_api/src/auth/bearer_auth.dart';
import 'package:custom_bet_api/src/auth/oauth.dart';
import 'package:custom_bet_api/src/api/bet_controller_api.dart';
import 'package:custom_bet_api/src/api/bet_taken_controller_api.dart';
import 'package:custom_bet_api/src/api/game_controller_api.dart';
import 'package:custom_bet_api/src/api/tournament_controller_api.dart';

class CustomBetApi {
  static const String basePath = r'http://localhost:7000';

  final Dio dio;
  final Serializers serializers;

  CustomBetApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get BetControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BetControllerApi getBetControllerApi() {
    return BetControllerApi(dio, serializers);
  }

  /// Get BetTakenControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BetTakenControllerApi getBetTakenControllerApi() {
    return BetTakenControllerApi(dio, serializers);
  }

  /// Get GameControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GameControllerApi getGameControllerApi() {
    return GameControllerApi(dio, serializers);
  }

  /// Get TournamentControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TournamentControllerApi getTournamentControllerApi() {
    return TournamentControllerApi(dio, serializers);
  }
}
