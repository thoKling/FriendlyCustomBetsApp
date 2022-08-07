import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../rest/clients/authentication_client.dart';
import 'authentication_constants.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  final FlutterAppAuth _appAuth = const FlutterAppAuth();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> loginAction() async {
    try {
      final AuthorizationTokenResponse? result =
          await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          auth0ClientId,
          auth0RedirectUri,
          issuer: 'https://$auth0Domain',
          scopes: ['openid', 'profile', 'offline_access'],
          // promptValues: ['login']
        ),
      );

      if (result == null) {
        throw Exception("Erreur lors du login"); //TODO: lang
      }

      final idToken = _parseIdToken(result.idToken ?? "");

      AuthenticationClient.setAuthorizationToken(result.accessToken ?? "");

      final profile = await AuthenticationClient().getUserDetails();

      await _secureStorage.write(
        key: 'refresh_token',
        value: result.refreshToken,
      );
    } catch (e, s) {
      debugPrint('login error: $e - stack: $s');
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
