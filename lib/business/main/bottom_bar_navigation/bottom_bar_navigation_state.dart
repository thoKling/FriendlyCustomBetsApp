part of 'bottom_bar_navigation_cubit.dart';

class BottomBarNavigationState extends Equatable {
  /// This list should remain clean, each item can be present at most once
  /// And at least one item should be present (home)
  final List<BottomBarItems> navbarItems;

  BottomBarNavigationState(List<BottomBarItems> navbarItems)
      : navbarItems = List.unmodifiable(navbarItems);

  BottomBarItems get currentNavBarItem {
    return navbarItems.last;
  }

  @override
  List<Object> get props => [navbarItems];
}
