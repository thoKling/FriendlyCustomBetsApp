part of 'authentication_cubit.dart';

enum LoginState {
  notLoggedIn,
  loading,
  loggedIn,
}

class AuthenticationState extends Equatable {
  const AuthenticationState(this.loginState);

  final LoginState loginState;

  factory AuthenticationState.initial() =>
      const AuthenticationState(LoginState.notLoggedIn);

  copyWith({
    LoginState? loginState,
  }) {
    return AuthenticationState(
      loginState ?? this.loginState,
    );
  }

  @override
  List<Object> get props => [loginState];
}
