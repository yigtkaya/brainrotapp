import 'package:brainrotapp/features/auth/data/auth_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(),
);

abstract interface class AuthRepository {
  Future<String?> signInAnonymously();
  Future<void> signOut();
  Stream<String?> get authStateChanges;
}
