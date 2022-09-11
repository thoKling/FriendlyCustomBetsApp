void main() {
  /*group('BottomBarNavigationCubit', () {
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
          const [BottomBarItems.games, BottomBarItems.leaderboard],
        ),
      ],
    );

    blocTest(
      'emits BottomBarNavigationState([home]) from BottomBarNavigationState([home, leaderboard, settings]) when home is added',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) =>
          cubit..setNavBarItem(BottomBarItems.games),
      seed: () => BottomBarNavigationState(const [
        BottomBarItems.games,
        BottomBarItems.leaderboard,
        BottomBarItems.settings,
      ]),
      expect: () => [
        BottomBarNavigationState(const [BottomBarItems.games]),
      ],
    );

    blocTest(
      'emits BottomBarNavigationState([home]) from BottomBarNavigationState([home, settings]) when pop',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) => cubit..pop(),
      seed: () => BottomBarNavigationState(
        const [BottomBarItems.games, BottomBarItems.settings],
      ),
      expect: () => [
        BottomBarNavigationState(const [BottomBarItems.games]),
      ],
    );

    blocTest(
      'emits assertionError when pop 2 times from BottomBarNavigationState([home, settings])',
      build: () => BottomBarNavigationCubit(),
      act: (BottomBarNavigationCubit cubit) => cubit
        ..pop()
        ..pop(),
      seed: () => BottomBarNavigationState(
        const [BottomBarItems.games, BottomBarItems.settings],
      ),
      expect: () => [
        BottomBarNavigationState(const [BottomBarItems.games]),
      ],
      errors: () => [isA<AssertionError>()],
    );
  });*/
}
