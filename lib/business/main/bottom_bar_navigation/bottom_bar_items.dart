enum BottomBarItems { home, leaderboard, settings }

int getBottomBarItemIndex(BottomBarItems item) {
  return BottomBarItems.values.indexOf(item);
}
