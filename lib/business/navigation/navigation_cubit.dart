import 'package:bloc/bloc.dart';

abstract class NavigationCubit extends Cubit<List<String>> {
  NavigationCubit(List<String> initialRoutes) : super(initialRoutes);

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
