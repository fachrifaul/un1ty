import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logger/loggy_types.dart';

class HomeState {}

class HomeBloc extends Cubit<HomeState> with BlocLoggy {
  HomeBloc() : super(HomeState());
}
