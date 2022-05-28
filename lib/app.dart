import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/ui/main/main_screen.dart';
import 'package:friendly_custom_bets_app/ui/theme/theme.dart';

class FriendlyCustomBetsApp extends StatelessWidget {
  const FriendlyCustomBetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const MainScreen(),
    );
  }
}
