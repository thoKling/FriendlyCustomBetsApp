import 'package:test/test.dart';
import 'package:custom_bet_api/custom_bet_api.dart';


/// tests for GameControllerApi
void main() {
  final instance = CustomBetApi().getGameControllerApi();

  group(GameControllerApi, () {
    // Add a new game to a Tournament
    //
    //Future<MyTournament> addGameToTournament(int tournamentId, Game game) async
    test('test addGameToTournament', () async {
      // TODO
    });

  });
}
