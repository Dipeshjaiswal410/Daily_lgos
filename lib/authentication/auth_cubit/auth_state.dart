
abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthLoggedInState extends AuthState {}

//class AuthSignUpState extends AuthState{}



class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState(this.error);
}
