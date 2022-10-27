import 'package:bloc/bloc.dart';
import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:friendly_custom_bets_app/api/client_api.dart';

part 'tournaments_state.dart';

class TournamentsCubit extends Cubit<TournamentsState> {
  TournamentsCubit() : super(TournamentsState.initial());

  CustomBetApi get _apiClient => ClientApi.instance;

  Future<void> fetchMyTournaments() async {
    try {
      emit(state.copyWith(
        tournamentsLoadingState: TournamentsLoadingState.loading,
      ));

      List<MyTournament> myTournaments =
          (await _apiClient.getTournamentControllerApi().getMyTournaments())
                  .data
                  ?.toList() ??
              [];

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
      MyTournament? newTournament = (await _apiClient
              .getTournamentControllerApi()
              .createTournament(body: name))
          .data;

      if (newTournament == null) {
        throw Exception("La réponse est nulle");
      }

      emit(state.copyWith(
        currentTournament: newTournament,
        myTournaments: List.from(state.myTournaments)..add(newTournament),
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

  Future<void> selectTournament(MyTournament tournament) async {
    emit(state.copyWith(currentTournament: tournament));
  }

  Future<void> joinTournament(int tournamentId) async {
    await _apiClient
        .getTournamentControllerApi()
        .joinTournament(body: tournamentId);
  }

  Future<void> updateCurrentTournament() async {
    assert(state.currentTournament?.id != null);

    await _apiClient
        .getTournamentControllerApi()
        .getTournament(tournamentId: state.currentTournament!.id!);
  }

  Future<void> addGame(String name) async {
    assert(state.currentTournament?.id != null);

    Game game = (GameBuilder()..name = name).build();
    MyTournament? tournament =
        (await _apiClient.getGameControllerApi().addGameToTournament(
                  tournamentId: state.currentTournament!.id!,
                  game: game,
                ))
            .data;

    emit(state.copyWith(currentTournament: tournament));
  }

  Future<void> addBet(String betName, double odd, int gameId) async {
    assert(state.currentTournament?.id != null);

    Bet bet = (BetBuilder()
          ..name = betName
          ..odd = odd)
        .build();

    MyTournament? tournament = (await _apiClient
            .getBetControllerApi()
            .addBetToGame(
                tournamentId: state.currentTournament!.id!,
                gameId: gameId,
                bet: bet))
        .data;

    emit(state.copyWith(currentTournament: tournament));
  }
}
