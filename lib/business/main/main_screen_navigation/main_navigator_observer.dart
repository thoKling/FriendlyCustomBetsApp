import 'package:flutter/material.dart';

import '../main_screen_navigation/bottom_bar_cubit.dart';

class MainNavigatorObserver extends NavigatorObserver {
  MainNavigatorObserver(this.navigationCubit);

  final BottomBarCubit navigationCubit;

  @override
  void didPop(Route route, Route? previousRoute) {
    navigationCubit.didPop(route.settings.name!);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    navigationCubit.didPush(route.settings.name!);
  }
}
