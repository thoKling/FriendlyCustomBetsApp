import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/selected_tournament/selected_tournament_cubit.dart';
import 'package:friendly_custom_bets_app/ui/main/games/game_list_tile_widget.dart';

import '../../../business/main/games_screen_navigation/games_screen_routes.dart';
import '../../../business/navigation/navigation_service.dart';

class GamesListWidget extends StatelessWidget {
  const GamesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SelectedTournamentCubit selectedTournamentCubit =
        context.read<SelectedTournamentCubit>();

    return BlocBuilder<SelectedTournamentCubit, SelectedTournamentsState>(
      builder: (context, state) => Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () =>
                  selectedTournamentCubit.updateSelectedTournament(),
              child: ListView.builder(
                itemCount: state.selectedTournament.games.length,
                itemBuilder: (context, index) => GameListTileWidget(
                  game: state.selectedTournament.games[index],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                gamesScreenNavKey.currentState?.pushNamed(GamesRoutes.addGame),
            child: const Text("Créer un match"),
          ), //TODO: lang
        ],
      ),
    );
  }
}
