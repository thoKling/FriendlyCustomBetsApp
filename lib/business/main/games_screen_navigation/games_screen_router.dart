import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/business/main/games_screen_navigation/games_screen_routes.dart';

import '../../../ui/main/games/games_add_screen.dart';
import '../../../ui/main/games/games_list_widget.dart';

class GamesScreenRouter {
  static MaterialPageRoute route(RouteSettings settings) {
    switch (settings.name) {
      case GamesRoutes.add:
        return GamesRoute(
          const GamesAddScreen(),
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
