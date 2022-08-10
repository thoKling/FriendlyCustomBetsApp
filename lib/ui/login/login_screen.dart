import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:friendly_custom_bets_app/business/authentication/authentication_cubit.dart';
import 'package:friendly_custom_bets_app/rest/clients/tournaments_client.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => context.read<AuthenticationCubit>().loginAction(),
          child: Text(
            FlutterI18n.translate(context, "login"),
          ),
        ),
        TextButton(
          onPressed: _fetchTournaments,
          child: Text(
            FlutterI18n.translate(context, "getTournaments"),
          ),
        ),
      ],
    );
  }

  void _fetchTournaments() async {
    String test = await TournamentsClient().myTournaments();
    debugPrint(test);
  }
}
