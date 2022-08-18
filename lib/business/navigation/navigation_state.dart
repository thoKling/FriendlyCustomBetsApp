part of 'navigation_cubit.dart';

class NavigationState extends Equatable {
  final List<String> routes;

  const NavigationState({required this.routes});

  factory NavigationState.initial() =>
      NavigationState(routes: List.unmodifiable([Routes.login]));

  copyWith({List<String>? routes}) {
    return NavigationState(
      routes: routes == null ? this.routes : List.unmodifiable(routes),
    );
  }

  String get currentRoute {
    return routes.last;
  }

  @override
  List<Object> get props => [];
}
