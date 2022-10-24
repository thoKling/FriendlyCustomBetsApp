import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/navigation/navigation_service.dart';
import 'package:friendly_custom_bets_app/business/overall/overall_routes.dart';
import 'package:friendly_custom_bets_app/business/tournaments/tournaments_cubit.dart';

class TournamentsListScreen extends StatelessWidget {
  const TournamentsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tournamentCubit = context.read<TournamentsCubit>();
    if (tournamentCubit.state.tournamentsLoadingState ==
        TournamentsLoadingState.notLoaded) {
      tournamentCubit.fetchMyTournaments();
    }

    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<TournamentsCubit, TournamentsState>(
          builder: (context, state) {
            if (state.tournamentsLoadingState ==
                TournamentsLoadingState.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            return RefreshIndicator(
              onRefresh: () => tournamentCubit.fetchMyTournaments(),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.myTournaments.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  return index < state.myTournaments.length
                      ? ListTile(
                          title: TextButton(
                            onPressed: () => _selectTournament(
                              context,
                              state.myTournaments[index],
                            ),
                            child: Text(state.myTournaments[index].name),
                          ),
                        )
                      : ListTile(
                          //TODO : move
                          leading: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.blue,
                            ),
                            onPressed: () => _joinTournament(
                              context,
                              tournamentCubit,
                            ),
                            child: const Text("Rejoindre"), //TODO: lang
                          ),
                          trailing: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.green,
                            ),
                            onPressed: () => _createTournament(context),
                            child: const Text("Créer"), //TODO: lang
                          ),
                        );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  void _selectTournament(BuildContext context, MyTournament tournament) {
    context.read<TournamentsCubit>().selectTournament(tournament);
    overallNavKey.currentState?.pushNamed(OverallRoutes.main);
  }

  void _createTournament(BuildContext context) {
    overallNavKey.currentState?.pushNamed(OverallRoutes.tournamentCreation);
  }

  void _joinTournament(
    BuildContext context,
    TournamentsCubit tournamentsCubit,
  ) async {
    String? tournamentId = await showDialog(
      context: context,
      builder: (context) {
        TextEditingController controller = TextEditingController();

        return AlertDialog(
          title: const Text(
            "Rentrez l'id du tournoi",
          ),
          content: TextField(
            controller: controller,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, null),
              child: const Text("Annuler"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, controller.text),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    if (tournamentId != null) {
      tournamentsCubit.joinTournament(int.parse(tournamentId));
    }
  }
}
