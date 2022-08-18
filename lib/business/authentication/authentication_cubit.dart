import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:friendly_custom_bets_app/rest/interceptors/authentication_interceptor.dart';

import 'authentication_constants.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState.initial());

  final FlutterAppAuth _appAuth = const FlutterAppAuth();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> loginAction() async {
    emit(state.copyWith(loginState: LoginState.loading));
    try {
      final AuthorizationTokenResponse? result =
          await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          auth0ClientId,
          auth0RedirectUri,
          issuer: 'https://$auth0Domain',
          scopes: ['openid', 'profile', 'offline_access'],
        ),
      );

      if (result == null) {
        throw Exception();
      }

      AuthenticationInterceptor.accessToken = result.idToken ?? "";

      //final profile = await AuthenticationClient().getUserDetails(); TODO: fix => on a pas le bon token, j'ai raté un truc sur OAuth

      await _secureStorage.write(
        key: 'refresh_token',
        value: result.refreshToken,
      );

      emit(state.copyWith(loginState: LoginState.loggedIn));
    } catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      Fluttertoast.showToast(
        msg: "Erreur lors de l'authentification",
      ); //TODO: lang
      emit(state.copyWith(loginState: LoginState.notLoggedIn));
    }
  }

  Map<String, dynamic> _parseIdToken(String idToken) {
    final parts = idToken.split(r'.');
    assert(parts.length == 3);

    return jsonDecode(
      utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
    );
  }
}
