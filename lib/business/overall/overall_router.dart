import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/business/overall/overall_routes.dart';
import 'package:friendly_custom_bets_app/ui/login/login_screen.dart';
import 'package:friendly_custom_bets_app/ui/tournaments_list/tournaments_list_screen.dart';

import '../../ui/main/main_screen.dart';

class OverallRouter {
  static MaterialPageRoute route(RouteSettings settings) {
    switch (settings.name) {
      case OverallRoutes.login:
        return OverallRoute(
          const LoginScreen(),
          settings: settings,
        );

      case OverallRoutes.main:
        return OverallRoute(
          const MainScreen(),
          settings: settings,
        );

      case OverallRoutes.tournamentsList:
        return OverallRoute(
          const TournamentsListScreen(),
          settings: settings,
        );

      default:
        return OverallRoute(
          const LoginScreen(),
          settings: settings,
        );
    }
  }
}

class OverallRoute<T> extends MaterialPageRoute<T> {
  OverallRoute(Widget widget, {RouteSettings? settings})
      : super(
          builder: (context) => widget,
          settings: settings,
          maintainState: false,
        );
}
