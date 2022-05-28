import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/business/navigation/routes.dart';
import 'package:friendly_custom_bets_app/ui/login/login_screen.dart';
import 'package:friendly_custom_bets_app/ui/main/main_screen.dart';

class MyRouter {
  static MaterialPageRoute route(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MainRoute(
          const LoginScreen(),
          settings: settings,
        );

      case Routes.main:
        return MainRoute(
          const MainScreen(),
          settings: settings,
        );

      default:
        return MainRoute(
          const LoginScreen(),
          settings: settings,
        );
    }
  }
}

class MainRoute<T> extends MaterialPageRoute<T> {
  MainRoute(Widget widget, {RouteSettings? settings})
      : super(
          builder: (context) => widget,
          settings: settings,
          maintainState: false,
        );
}
