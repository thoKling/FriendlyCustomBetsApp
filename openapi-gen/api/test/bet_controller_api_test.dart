import 'package:test/test.dart';
import 'package:custom_bet_api/custom_bet_api.dart';


/// tests for BetControllerApi
void main() {
  final instance = CustomBetApi().getBetControllerApi();

  group(BetControllerApi, () {
    // Add a new bet to a Game
    //
    //Future<MyTournament> addBetToGame(int tournamentId, int gameId, Game game) async
    test('test addBetToGame', () async {
      // TODO
    });

  });
}
