import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendly_custom_bets_app/business/selected_tournament/selected_tournament_cubit.dart';

class GameAddScreen extends HookWidget {
  const GameAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameTextController = useTextEditingController();

    return Column(
      children: [
        const Text("Ajoutez un match"), //TODO: lang
        SizedBox(
          height: 50,
          child: TextField(
            controller: nameTextController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nom du match',
            ),
          ),
        ), //TODO: lang
        TextButton(
          onPressed: () => _createGame(context, nameTextController.text),
          child: const Text("Ajouter"),
        ), //TODO: lang
      ],
    );
  }

  void _createGame(BuildContext context, String name) {
    context.read<SelectedTournamentCubit>().addGame(name);
  }
}
