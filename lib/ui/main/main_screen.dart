import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendly_custom_bets_app/business/main/main_screen_navigation/bottom_bar_cubit.dart';

import '../../business/main/main_screen_navigation/main_screen_router.dart';
import '../../business/navigation/navigation_observer.dart';
import '../../business/navigation/navigation_service.dart';
import 'app_bar_widget.dart';
import 'bottom_bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomBarCubit>(
      create: (context) => BottomBarCubit(),
      child: _MainScreen(),
    );
  }
}

/// Separate class because of context problem with WillPopScope see: https://github.com/felangel/bloc/issues/1784
class _MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !(await mainScreenNavKey.currentState!.maybePop());
      },
      child: SafeArea(
        child: Scaffold(
          appBar: const AppBarWidget(),
          body: Navigator(
            initialRoute: "games",
            key: mainScreenNavKey,
            onGenerateRoute: (RouteSettings settings) =>
                MainScreenRouter.route(settings),
            observers: [NavigationObserver(context.read<BottomBarCubit>())],
          ),
          bottomNavigationBar: const BottomBarWidget(),
        ),
      ),
    );
  }
}
