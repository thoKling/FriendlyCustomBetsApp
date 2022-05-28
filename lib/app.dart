import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/ui/main/main_screen.dart';
import 'package:friendly_custom_bets_app/ui/theme/theme.dart';

import 'business/navigation/my_router.dart';
import 'business/navigation/routes.dart';

class FriendlyCustomBetsApp extends StatefulWidget {
  const FriendlyCustomBetsApp({Key? key}) : super(key: key);

  @override
  State<FriendlyCustomBetsApp> createState() => _FriendlyCustomBetsAppState();
}

class _FriendlyCustomBetsAppState extends State<FriendlyCustomBetsApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const MainScreen(),
      // Routes
      initialRoute: Routes.login,
      navigatorKey: _navigatorKey,
      onGenerateRoute: (RouteSettings settings) => MyRouter.route(settings),
    );
  }
}
