import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friendly_custom_bets_app/business/main/bottom_bar_navigation/bottom_bar_items.dart';
import 'package:friendly_custom_bets_app/business/main/bottom_bar_navigation/bottom_bar_navigation_cubit.dart';

void main() {
  group('BottomBarNavigationCubit', () {
    blocTest<BottomBarNavigationCubit, BottomBarNavigationState>(
      'emits nothing when nothing is added',
      build: () => BottomBarNavigationCubit(),
      expect: () => [],
    );

    blocTest(
      'emits BottomBarNavigationState([home, leaderboard]) when leaderboard is added',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) =>
          cubit.setNavBarItem(BottomBarItems.leaderboard),
      expect: () => [
        BottomBarNavigationState(
            const [BottomBarItems.home, BottomBarItems.leaderboard])
      ],
    );

    blocTest(
      'emits BottomBarNavigationState([home]) from BottomBarNavigationState([home, leaderboard, settings]) when home is added',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) =>
          cubit..setNavBarItem(BottomBarItems.home),
      seed: () => BottomBarNavigationState(const [
        BottomBarItems.home,
        BottomBarItems.leaderboard,
        BottomBarItems.settings
      ]),
      expect: () => [
        BottomBarNavigationState(const [BottomBarItems.home]),
      ],
    );

    blocTest(
      'emits BottomBarNavigationState([home]) from BottomBarNavigationState([home, settings]) when pop',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) => cubit..pop(),
      seed: () => BottomBarNavigationState(
          const [BottomBarItems.home, BottomBarItems.settings]),
      expect: () => [
        BottomBarNavigationState(const [BottomBarItems.home]),
      ],
    );

    blocTest(
      'emits assertionError when pop 2 times from BottomBarNavigationState([home, settings])',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) => cubit
        ..pop()
        ..pop(),
      seed: () => BottomBarNavigationState(
          const [BottomBarItems.home, BottomBarItems.settings]),
      expect: () => [
        BottomBarNavigationState(const [BottomBarItems.home]),
      ],
      errors: () => [isA<AssertionError>()],
    );
  });
}
