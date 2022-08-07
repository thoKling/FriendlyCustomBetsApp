import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:friendly_custom_bets_app/business/authentication/authentication_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => context.read<AuthenticationCubit>().loginAction(),
        child: Text(
          FlutterI18n.translate(context, "login"),
        ),
      ),
    );
  }
}
