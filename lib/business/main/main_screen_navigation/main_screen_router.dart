import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/ui/main/games/games_screen.dart';
import 'package:friendly_custom_bets_app/ui/main/settings/settings_screen.dart';

import '../../../ui/main/leaderboard/leaderboard_screen.dart';
import 'main_routes.dart';

class MainScreenRouter {
  static MaterialPageRoute route(RouteSettings settings) {
    switch (settings.name) {
      case MainRoutes.games:
        return MainRoute(
          const GamesScreen(),
          settings: settings,
        );

      case MainRoutes.leaderboard:
        return MainRoute(
          const LeaderboardScreen(),
          settings: settings,
        );

      case MainRoutes.settings:
        return MainRoute(
          const SettingsScreen(),
          settings: settings,
        );

      default:
        return MainRoute(
          const GamesScreen(),
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

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(opacity: animation, child: child);
  }
}
