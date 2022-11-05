import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/selected_tournament/selected_tournament_cubit.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedTournamentCubit, SelectedTournamentsState>(
      builder: (context, state) => AppBar(
        automaticallyImplyLeading: false,
        title: Text(state.selectedTournament.name),
        actions: [
          SizedBox(
            width: 100,
            child: Center(
              child: Text(
                state.selectedTournament.myTokens.toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
