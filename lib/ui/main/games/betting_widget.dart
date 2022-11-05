import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../business/selected_tournament/selected_tournament_cubit.dart';

class BettingWidget extends HookWidget {
  const BettingWidget({Key? key, required this.game, required this.bet})
      : super(key: key);

  final Game game;
  final Bet bet;

  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = useTextEditingController();

    return Row(children: [
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: amountController,
        ),
      ),
      TextButton(
        onPressed: () => _bet(context, amountController.text),
        child: const Text("Parier"),
      ),
    ]);
  }

  void _bet(BuildContext context, String amount) {
    context
        .read<SelectedTournamentCubit>()
        .takeBet(double.parse(amount), game.id!, bet.id!);
  }
}
