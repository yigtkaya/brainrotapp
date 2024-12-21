import 'package:brainrotapp/features/auth/domain/repository/auth_repository.dart';
import 'package:brainrotapp/features/auth/providers/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  late AuthRepository repository;
  @override
  AuthState build() {
    repository = ref.watch(authRepositoryProvider);
    _listenToAuthStateChanges();
    return AuthState.initial();
  }

  void _listenToAuthStateChanges() {
    repository.authStateChanges.listen(
      (String? uid) {
        if (uid != null) {
          state = AuthState.authenticated(uid);
        } else {
          state = AuthState.initial();
        }
      },
    );
  }

  Future<void> signInAnonymously() async {
    state = AuthState.loading();
    try {
      await repository.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signOut() async {
    state = AuthState.loading();
    try {
      await repository.signOut();
      state = AuthState.initial();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(e.toString());
    }
  }
}
