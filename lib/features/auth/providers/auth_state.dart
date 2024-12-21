class AuthState {
  const AuthState({
    this.isLoading = false,
    this.uid,
    this.errorMessage,
  });

  factory AuthState.initial() => const AuthState();

  factory AuthState.loading() => const AuthState(isLoading: true);

  factory AuthState.authenticated(String uid) => AuthState(uid: uid);

  factory AuthState.error(String message) => AuthState(errorMessage: message);
  final bool isLoading;
  final String? uid;
  final String? errorMessage;

  bool get isAuthenticated => uid != null;

  AuthState copyWith({
    bool? isLoading,
    String? uid,
    String? errorMessage,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      uid: uid ?? this.uid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
