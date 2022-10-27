import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/business/main/games_screen_navigation/games_screen_routes.dart';
import 'package:friendly_custom_bets_app/ui/main/games/bet_add_screen.dart';

import '../../../ui/main/games/game_add_screen.dart';
import '../../../ui/main/games/games_list_widget.dart';

class GamesScreenRouter {
  static MaterialPageRoute route(RouteSettings settings) {
    switch (settings.name) {
      case GamesRoutes.addGame:
        return GamesRoute(
          const GameAddScreen(),
          settings: settings,
        );

      case GamesRoutes.addBet:
        return GamesRoute(
          const BetAddScreen(),
          settings: settings,
        );

      case GamesRoutes.list:
        return GamesRoute(
          const GamesListWidget(),
          settings: settings,
        );

      default:
        return GamesRoute(
          const GamesListWidget(),
          settings: settings,
        );
    }
  }
}

class GamesRoute<T> extends MaterialPageRoute<T> {
  GamesRoute(Widget widget, {RouteSettings? settings})
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
