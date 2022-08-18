import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

            return ListView.builder(
              itemCount: state.myTournaments.length + 1,
              itemBuilder: (BuildContext context, int index) {
                return index < state.myTournaments.length
                    ? ListTile(title: Text(state.myTournaments[index].name))
                    : ListTile(
                        title: TextButton(
                          onPressed: () => _createTournament(context),
                          child: const Text("Créer un tournoi"), //TODO: lang
                        ),
                      );
              },
            );
          },
        ),
      ),
    );
  }

  void _createTournament(BuildContext context) {
    context.read<TournamentsCubit>().createTournament("Test");
  }
}
