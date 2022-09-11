import 'package:flutter/cupertino.dart';

abstract class MainRoutes {
  static const String games = "games";
  static const String leaderboard = "leaderboard";
  static const String settings = "settings";

  static int getBottomBarIndex(String route) {
    switch (route) {
      case games:
        return 0;
      case leaderboard:
        return 1;
      case settings:
        return 2;
      default:
        debugPrint("$route not recognized for bottom bar index");

        return 0;
    }
  }

  static String getRouteFromIndex(int index) {
    switch (index) {
      case 0:
        return games;
      case 1:
        return leaderboard;
      case 2:
        return settings;
      default:
        return games;
    }
  }
}
