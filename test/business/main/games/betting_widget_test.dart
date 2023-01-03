import 'package:custom_bet_api/custom_bet_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friendly_custom_bets_app/ui/main/games/betting_widget.dart';

void main() {
  testWidgets('BettingWidget test', (WidgetTester tester) async {
    // Create a test Game and Bet object
    final game = Game((b) => {
          b.name = "Game",
        });
    final bet = Bet((b) => {b.name = "Bet", b.odd = 1});

    // Build the BettingWidget widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: BettingWidget(game: game, bet: bet)),
      ),
    );

    // Verify that the text field and button are displayed
    expect(find.byType(TextFormField), findsOneWidget);

    Finder textButtonFinder = find.byType(TextButton);
    expect(textButtonFinder, findsOneWidget);

    // Verify that the button is disabled when the text field is empty
    expect(tester.widget<TextButton>(textButtonFinder).onPressed, isNull);

    // Enter some text into the text field
    await tester.enterText(find.byType(TextFormField), '10');

    // Wait for the widget to rebuild
    await tester.pump();

    // Verify that the button is enabled now
    expect(tester.widget<TextButton>(textButtonFinder).onPressed, isNotNull);
  });
}
