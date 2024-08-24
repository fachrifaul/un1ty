import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logger/loggy_types.dart';

class LoginState {}

class LoginBloc extends Cubit<LoginState> with BlocLoggy {
  LoginBloc() : super(LoginState());
}
