import 'package:bloc/bloc.dart';

abstract class NavigationObserverCubit extends Cubit<List<String>> {
  NavigationObserverCubit(List<String> initialRoutes) : super(initialRoutes);

  /// If item is already in list we go back to it, otherwise we add it on top of the list
  void addRouteOrPopUntil(String route, {Object? args}) {
    if (state.last == route) {
      return;
    } else if (state.contains(route)) {
      List<String> newList = state.takeWhile((item) => item != item).toList();
      newList.add(route);
      emit(
        newList,
      );
    } else {
      emit(
        List.from(state)..add(route),
      );
    }
  }

  void didPop(String route) {
    if (state.isNotEmpty) {
      emit(List.from(state)..removeLast());
    }
  }

  void didPush(String route) {
    emit(
      List.from(state)..add(route),
    );
  }
}
