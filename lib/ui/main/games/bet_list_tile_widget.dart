import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:flutter/material.dart';

import 'betting_widget.dart';

class BetListTileWidget extends StatelessWidget {
  const BetListTileWidget({Key? key, required this.game, required this.bet})
      : super(key: key);

  final Game game;
  final Bet bet;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 80,
          child: Column(
            children: [
              Text(bet.name),
              Text("Côte: ${bet.odd}"),
            ],
          ),
        ),
        Flexible(
          flex: 20,
          child: BettingWidget(game: game, bet: bet),
        ),
      ],
    );
  }
}
