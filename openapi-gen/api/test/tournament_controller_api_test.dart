import 'package:test/test.dart';
import 'package:custom_bet_api/custom_bet_api.dart';


/// tests for TournamentControllerApi
void main() {
  final instance = CustomBetApi().getTournamentControllerApi();

  group(TournamentControllerApi, () {
    // Add a new game to a Tournament
    //
    //Future<Game> addGameToTournament(AddGameToTournamentRequest addGameToTournamentRequest) async
    test('test addGameToTournament', () async {
      // TODO
    });

    // Create a tournament
    //
    //Future<MyTournament> createTournament(String body) async
    test('test createTournament', () async {
      // TODO
    });

    // Fetch all tournaments where user participate
    //
    //Future<BuiltList<MyTournament>> getMyTournaments() async
    test('test getMyTournaments', () async {
      // TODO
    });

    // Fetch a tournament by its id
    //
    //Future<MyTournament> getTournament(int tournamentId) async
    test('test getTournament', () async {
      // TODO
    });

    // Join a tournament by its id
    //
    //Future<MyTournament> joinTournament(int body) async
    test('test joinTournament', () async {
      // TODO
    });

  });
}
