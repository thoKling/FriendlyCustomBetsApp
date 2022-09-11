import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/tournaments/tournaments_cubit.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TournamentsCubit, TournamentsState>(
      builder: (context, state) => AppBar(
        automaticallyImplyLeading: false,
        title: Text(state.currentTournament!.name),
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
