import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:flutter/material.dart';
import 'package:friendly_custom_bets_app/ui/main/games/bet_add_screen.dart';
import 'package:friendly_custom_bets_app/ui/main/games/bet_list_tile_widget.dart';

import '../../../business/main/games_screen_navigation/games_screen_routes.dart';
import '../../../business/navigation/navigation_service.dart';

class GameListTileWidget extends StatelessWidget {
  const GameListTileWidget({Key? key, required this.game}) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      child: ListTile(
        title: Text(game.name),
        subtitle: Column(
          children: [
            for (var bet in game.bets) BetListTileWidget(bet: bet),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => _goToAddBetScreen(context),
                  child: const Text("Ajouter un pari"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _goToAddBetScreen(BuildContext context) {
    gamesScreenNavKey.currentState
        ?.pushNamed(GamesRoutes.addBet, arguments: BetAddScreenArgs(game.id!));
  }
}
