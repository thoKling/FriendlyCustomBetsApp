import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:friendly_custom_bets_app/business/navigation/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => Navigator.of(context)
            .pushNamed(Routes.main), //TODO: vrai login avec OAuth
        child: Text(
          FlutterI18n.translate(context, "login"),
        ),
      ),
    );
  }
}
