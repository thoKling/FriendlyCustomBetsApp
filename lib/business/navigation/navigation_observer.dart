import 'package:flutter/material.dart';

import 'navigation_cubit.dart';

class NavigationObserver extends NavigatorObserver {
  NavigationObserver(this.navigationCubit);

  final NavigationCubit navigationCubit;

  @override
  void didPop(Route route, Route? previousRoute) {
    navigationCubit.didPop(route.settings.name!);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    navigationCubit.didPush(route.settings.name!);
  }
}
