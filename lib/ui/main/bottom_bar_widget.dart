import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/main/main_screen_navigation/bottom_bar_cubit.dart';
import 'package:friendly_custom_bets_app/business/main/main_screen_navigation/main_routes.dart';

import '../../business/navigation/navigation_service.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, List<String>>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: MainRoutes.getBottomBarIndex(state.last),
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home', //TODO: lang
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard,
              ),
              label: 'Leaderboard', //TODO: lang
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings', //TODO: lang
            ),
          ],
          onTap: (index) {
            mainScreenNavKey.currentState
                ?.pushNamed(MainRoutes.getRouteFromIndex(index));
          },
        );
      },
    );
  }
}
