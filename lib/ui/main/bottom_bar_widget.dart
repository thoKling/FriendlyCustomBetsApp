import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/main/bottom_bar_navigation/bottom_bar_items.dart';
import 'package:friendly_custom_bets_app/business/main/bottom_bar_navigation/bottom_bar_navigation_cubit.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarNavigationCubit, BottomBarNavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: getBottomBarItemIndex(state.currentNavBarItem),
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
            BlocProvider.of<BottomBarNavigationCubit>(context)
                .setNavBarItem(BottomBarItems.values[index]);
          },
        );
      },
    );
  }
}
