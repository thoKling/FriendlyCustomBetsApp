import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:friendly_custom_bets_app/business/authentication/authentication_cubit.dart';
import 'package:friendly_custom_bets_app/business/navigation/navigation_service.dart';
import 'package:friendly_custom_bets_app/business/overall/overall_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<AuthenticationCubit, AuthenticationState>(
          listener: (BuildContext context, AuthenticationState state) {
            if (state.loginState == LoginState.loggedIn) {
              overallNavKey.currentState
                  ?.pushNamed(OverallRoutes.tournamentsList);
            }
          },
          builder: (BuildContext context, AuthenticationState state) {
            if (state.loginState == LoginState.loading) {
              const Center(child: CircularProgressIndicator());
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () =>
                      context.read<AuthenticationCubit>().loginAction(),
                  child: Text(
                    FlutterI18n.translate(context, "login"),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
