import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:flutter/material.dart';

class BetListTileWidget extends StatelessWidget {
  const BetListTileWidget({Key? key, required this.bet}) : super(key: key);

  final Bet bet;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bet.name),
      subtitle: Text(bet.odd.toString()),
    );
  }
}
