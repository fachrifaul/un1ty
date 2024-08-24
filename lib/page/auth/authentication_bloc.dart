import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logger/loggy_types.dart';

class AuthenticationState {
  final String userName;

  AuthenticationState({
    this.userName = '',
  });

  /// Whether a user has logged in.
  bool get loggedIn => userName.isNotEmpty;

  AuthenticationState copyWith({
    String? userName,
  }) {
    return AuthenticationState(
      userName: userName ?? this.userName,
    );
  }
}

class AuthhenticationBloc extends Cubit<AuthenticationState> with BlocLoggy {
  AuthhenticationBloc() : super(AuthenticationState());

  /// Logs in a user.
  void login(String userName) {
    emit(state.copyWith(userName: userName));
    loggy.info(state.loggedIn);
  }

  /// Logs out the current user.
  void logout() {
    emit(state.copyWith(userName: ''));
    loggy.info(state.loggedIn);
  }
}
