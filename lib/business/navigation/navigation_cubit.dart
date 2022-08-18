import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:friendly_custom_bets_app/business/navigation/routes.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  final GlobalKey<NavigatorState> _navigatorKey;

  NavigationCubit(this._navigatorKey) : super(NavigationState.initial());

  void addRoute(String destination, {Object? args}) {
    if (state.currentRoute != destination) {
      _navigatorKey.currentState?.pushNamed(
        destination,
        arguments: args,
      );

      emit(state.copyWith(
        routes: List.from(state.routes)..add(destination),
      ));
    }
  }

  void popRoute(String destination, {Object? args}) {
    if (state.routes.length > 1) {
      _navigatorKey.currentState?.pop();
    }

    emit(state.copyWith(routes: List.from(state.routes)..removeLast()));
  }
}
