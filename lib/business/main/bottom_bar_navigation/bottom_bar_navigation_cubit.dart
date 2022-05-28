import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'bottom_bar_items.dart';

part 'bottom_bar_navigation_state.dart';

class BottomBarNavigationCubit extends Cubit<BottomBarNavigationState> {
  BottomBarNavigationCubit()
      : super(BottomBarNavigationState(const [BottomBarItems.home]));

  /// If item is already in list we go back to it, otherwise we add it on top of the list
  void setNavBarItem(BottomBarItems bottomBarItem) {
    if (state.navbarItems.contains(bottomBarItem)) {
      List<BottomBarItems> newList =
          state.navbarItems.takeWhile((item) => item != bottomBarItem).toList();
      newList.add(bottomBarItem);
      emit(
        BottomBarNavigationState(newList),
      );
    } else {
      emit(
        BottomBarNavigationState(
          List.from(state.navbarItems)..add(bottomBarItem),
        ),
      );
    }
  }

  /// Pop the last route, list has to contain more than 1 item
  void pop() {
    assert(state.navbarItems.length > 1);
    emit(
      BottomBarNavigationState(
        List.from(state.navbarItems)..removeLast(),
      ),
    );
  }
}
