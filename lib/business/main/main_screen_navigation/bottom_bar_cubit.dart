import '../../navigation/navigation_cubit.dart';
import 'main_routes.dart';

class BottomBarCubit extends NavigationObserverCubit {
  BottomBarCubit() : super([MainRoutes.games]);
}
