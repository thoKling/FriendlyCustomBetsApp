import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../api/client_api.dart';
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
          scopes: ['openid'],
          additionalParameters: {
            'audience': 'https://friendly-custom-bets-api.sponge.com',
          },
        ),
      );

      if (result == null) {
        throw Exception();
      }

      //Add token
      ClientApi.instance.setOAuthToken("Auth0", result.accessToken ?? "");

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
}
