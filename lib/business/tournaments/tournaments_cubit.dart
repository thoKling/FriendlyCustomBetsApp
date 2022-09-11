import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../rest/clients/tournaments_client.dart';
import '../../rest/dto/game.dart';
import '../../rest/dto/tournament.dart';

part 'tournaments_state.dart';

class TournamentsCubit extends Cubit<TournamentsState> {
  TournamentsCubit() : super(TournamentsState.initial());

  Future<void> fetchMyTournaments() async {
    try {
      emit(state.copyWith(
        tournamentsLoadingState: TournamentsLoadingState.loading,
      ));

      List<Tournament> myTournaments =
          await TournamentsClient().getMyTournaments();

      debugPrint("Tournaments fetched : ${myTournaments.toString()}");

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

  Future<void> createTournament(String name) async {
    try {
      Tournament tournament = await TournamentsClient().createTournament(name);

      emit(state.copyWith(
        myTournaments: List.from(state.myTournaments)..add(tournament),
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

  Future<void> selectTournament(Tournament tournament) async {
    emit(state.copyWith(currentTournament: tournament));
  }

  Future<void> joinTournament(int tournamentId) async {
    await TournamentsClient().joinTournament(tournamentId);
  }

  Future<void> updateCurrentTournament() async {
    assert(state.currentTournament?.id != null);

    Tournament t =
        await TournamentsClient().getTournament(state.currentTournament!.id);
  }

  Future<void> addGame(String name) async {
    assert(state.currentTournament?.id != null);

    Game game =
        await TournamentsClient().addGame(state.currentTournament!.id, name);
    Tournament updatedCurrentTournament = state.currentTournament!;
    updatedCurrentTournament.games.add(game);

    emit(state.copyWith(currentTournament: updatedCurrentTournament));
  }
}
