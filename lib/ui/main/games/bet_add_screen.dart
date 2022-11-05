import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendly_custom_bets_app/business/navigation/navigation_service.dart';

import '../../../business/main/games_screen_navigation/games_screen_routes.dart';
import '../../../business/selected_tournament/selected_tournament_cubit.dart';

/// Args to pass via route
class BetAddScreenArgs {
  final int gameId;

  const BetAddScreenArgs(this.gameId);
}

class BetAddScreen extends HookWidget {
  const BetAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameTextController = useTextEditingController();
    TextEditingController oddTextController = useTextEditingController();

    return Column(
      children: [
        const Text("Ajouter un pari"), //TODO: lang
        SizedBox(
          height: 50,
          child: TextField(
            controller: nameTextController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nom du pari',
            ),
          ),
        ), //TODO: lang
        SizedBox(
          height: 50,
          child: TextField(
            controller: oddTextController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Cote',
            ),
          ),
        ), //TODO: lang
        TextButton(
          onPressed: () => _createBet(
            context,
            nameTextController.text,
            oddTextController.text,
          ),
          child: const Text("Ajouter"),
        ), //TODO: lang
      ],
    );
  }

  void _createBet(BuildContext context, String betName, String betOdd) async {
    BetAddScreenArgs args =
        ModalRoute.of(context)!.settings.arguments as BetAddScreenArgs;

    await context.read<SelectedTournamentCubit>().addBet(
          betName,
          double.parse(betOdd),
          args.gameId,
        );

    gamesScreenNavKey.currentState?.pushNamed(GamesRoutes.list);
  }
}
