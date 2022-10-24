import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendly_custom_bets_app/business/navigation/navigation_service.dart';

import '../../business/overall/overall_routes.dart';
import '../../business/tournaments/tournaments_cubit.dart';

class TournamentCreationScreen extends HookWidget {
  const TournamentCreationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textFieldController = useTextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("Créer un tournoi"), //TODO: lang
            const Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              onPressed: () => _back(context),
              child: const Text("Retour"), //TODO: lang
            ),
            TextField(
              controller: textFieldController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nom du tournoi',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              onPressed: () =>
                  _createTournament(context, textFieldController.text),
              child: const Text("Créer"), //TODO: lang
            ),
          ],
        ),
      ),
    );
  }

  void _createTournament(BuildContext context, String name) async {
    await context.read<TournamentsCubit>().createTournament(name);

    overallNavKey.currentState?.pushNamed(OverallRoutes.main);
  }

  void _back(BuildContext context) {
    Navigator.pop(context);
  }
}
