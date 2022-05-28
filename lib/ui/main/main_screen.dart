import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/main/bottom_bar_navigation/bottom_bar_items.dart';
import 'package:friendly_custom_bets_app/business/main/bottom_bar_navigation/bottom_bar_navigation_cubit.dart';
import 'package:friendly_custom_bets_app/ui/main/bottom_bar_widget.dart';
import 'package:friendly_custom_bets_app/ui/main/settings/settings_screen.dart';

import 'home/home_screen.dart';
import 'leaderboard/leaderboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomBarNavigationCubit>(
      create: (context) => BottomBarNavigationCubit(),

      /// WillPopScope widget will register the callback to manage the back navigation action
      child: WillPopScope(
        onWillPop: () => _navigateBack(context),
        child: Scaffold(
          appBar: AppBar(title: const Text("TODO")),
          body: BlocBuilder<BottomBarNavigationCubit, BottomBarNavigationState>(
            builder: (context, state) =>
                _mainScreenRooter(state.currentNavBarItem),
          ),
          bottomNavigationBar: const BottomBarWidget(),
        ),
      ),
    );
  }

  Widget _mainScreenRooter(BottomBarItems currentItem) {
    switch (currentItem) {
      case BottomBarItems.home:
        return const HomeScreen();
      case BottomBarItems.leaderboard:
        return const LeaderboardScreen();
      case BottomBarItems.settings:
        return const SettingsScreen();
    }
  }

  Future<bool> _navigateBack(BuildContext context) {
    BottomBarNavigationCubit bottomNavigationCubit =
        BlocProvider.of<BottomBarNavigationCubit>(context);
    if (bottomNavigationCubit.state.navbarItems.length > 1) {
      /// Pop managed internally by navbar
      bottomNavigationCubit.pop();
      return Future(() => false);
    } else {
      /// Pop managed normally
      return Future(() => true);
    }
  }
}
