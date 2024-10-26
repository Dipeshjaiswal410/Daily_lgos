import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AuthCubit() : super(AuthInitialState()) {
    User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      emit(AuthLoggedInState());
    }
  }

  // SignUp Function
  void signUpFunction(String gmail, String password) async {
    emit(AuthLoadingState());
    try {
      await _auth.createUserWithEmailAndPassword(
          email: gmail, password: password);
      emit(AuthLoggedInState()); // Emiting signup state
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(AuthErrorState(e.message.toString()));
      }
    }
  }

  // Login Function
  void logInFunction(String gmail, String password) async {
    emit(AuthLoadingState());
    try {
      await _auth.signInWithEmailAndPassword(email: gmail, password: password);
      emit(AuthLoggedInState());
    } on FirebaseAuthException catch (e) {
      emit(AuthErrorState(e.message.toString()));
    }
  }

  // Sign-Out Function
  void signOutFunction() async {
    await _auth.signOut();
  }
}
