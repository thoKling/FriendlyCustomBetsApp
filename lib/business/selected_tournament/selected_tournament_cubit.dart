import 'package:bloc/bloc.dart';
import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:equatable/equatable.dart';

import '../../api/client_api.dart';

part 'selected_tournament_state.dart';

class SelectedTournamentCubit extends Cubit<SelectedTournamentsState> {
  SelectedTournamentCubit(MyTournament selectedTournament)
      : super(SelectedTournamentsState.initial(selectedTournament));

  CustomBetApi get _apiClient => ClientApi.instance;

  Future<void> updateSelectedTournament() async {
    await _apiClient
        .getTournamentControllerApi()
        .getTournament(tournamentId: state.selectedTournament.id!);
  }

  Future<void> addGame(String name) async {
    Game game = (GameBuilder()..name = name).build();
    MyTournament? tournament =
        (await _apiClient.getGameControllerApi().addGameToTournament(
                  tournamentId: state.selectedTournament.id!,
                  game: game,
                ))
            .data;

    emit(state.copyWith(selectedTournament: tournament));
  }

  Future<void> addBet(String betName, double odd, int gameId) async {
    Bet bet = (BetBuilder()
          ..name = betName
          ..odd = odd)
        .build();

    MyTournament? tournament =
        (await _apiClient.getBetControllerApi().addBetToGame(
                  tournamentId: state.selectedTournament.id!,
                  gameId: gameId,
                  bet: bet,
                ))
            .data;

    emit(state.copyWith(selectedTournament: tournament));
  }

  Future<void> takeBet(double amount, int gameId, int betId) async {
    TakeBetRequest takeBetRequest =
        (TakeBetRequestBuilder()..tokensAmount = amount).build();

    BetTaken? res = (await _apiClient.getBetTakenControllerApi().takeBet(
              tournamentId: state.selectedTournament.id!,
              betId: betId,
              gameId: gameId,
              takeBetRequest: takeBetRequest,
            ))
        .data;

    emit(state.copyWith(betsTaken: List.from(state.betsTaken)..add(res!)));
  }
}
