import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../rest/clients/tournaments_client.dart';
import '../../rest/dto/tournament.dart';

part 'tournaments_state.dart';

class TournamentsCubit extends Cubit<TournamentsState> {
  TournamentsCubit() : super(TournamentsState.initial());

  void fetchMyTournaments() async {
    try {
      emit(state.copyWith(
        tournamentsLoadingState: TournamentsLoadingState.loading,
      ));

      List<Tournament> myTournaments =
          await TournamentsClient().getMyTournaments();

      emit(state.copyWith(
        myTournaments: myTournaments,
        tournamentsLoadingState: TournamentsLoadingState.loaded,
      ));
    } on Exception catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Impossible de récupérer les tournois",
      ); //TODO: lang

      emit(state.copyWith(
        tournamentsLoadingState: TournamentsLoadingState.loaded,
      ));
    }
  }

  void createTournament(String name) async {
    try {
      Tournament tournament = await TournamentsClient().createTournament(name);

      emit(state.copyWith(
        currentTournament: tournament,
      ));
    } on Exception catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Impossible de créer le tournoi",
      ); //TODO: lang

      emit(state.copyWith(
        tournamentsLoadingState: TournamentsLoadingState.loaded,
      ));
    }
  }
}
