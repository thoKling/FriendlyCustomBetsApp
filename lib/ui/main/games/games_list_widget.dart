import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/tournaments/tournaments_cubit.dart';

import '../../../business/main/games_screen_navigation/games_screen_routes.dart';
import '../../../business/navigation/navigation_service.dart';

class GamesListWidget extends StatelessWidget {
  const GamesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TournamentsCubit tournamentsCubit = context.read<TournamentsCubit>();

    return BlocBuilder<TournamentsCubit, TournamentsState>(
      builder: (context, state) => Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => tournamentsCubit.updateCurrentTournament(),
              child: ListView.builder(
                itemCount: state.currentTournament!.games.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(state.currentTournament!.games[index].name),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                gamesScreenNavKey.currentState?.pushNamed(GamesRoutes.add),
            child: const Text("Créer un match"),
          ), //TODO: lang
        ],
      ),
    );
  }
}
