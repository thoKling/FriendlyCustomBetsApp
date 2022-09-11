import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/business/main/games_screen_navigation/games_screen_router.dart';

import '../../../business/main/games_screen_navigation/games_screen_routes.dart';
import '../../../business/navigation/navigation_service.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !(await gamesScreenNavKey.currentState!.maybePop());
      },
      child: Navigator(
        initialRoute: GamesRoutes.list,
        key: gamesScreenNavKey,
        onGenerateRoute: (RouteSettings settings) =>
            GamesScreenRouter.route(settings),
      ),
    );
  }
}
