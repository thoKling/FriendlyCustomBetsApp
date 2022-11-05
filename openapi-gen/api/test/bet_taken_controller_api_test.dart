import 'package:test/test.dart';
import 'package:custom_bet_api/custom_bet_api.dart';


/// tests for BetTakenControllerApi
void main() {
  final instance = CustomBetApi().getBetTakenControllerApi();

  group(BetTakenControllerApi, () {
    // Take a bet on an existing bet
    //
    //Future<BetTaken> takeBet(int tournamentId, int gameId, int betId, TakeBetRequest takeBetRequest) async
    test('test takeBet', () async {
      // TODO
    });

  });
}
