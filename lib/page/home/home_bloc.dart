import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/logger/loggy_types.dart';

class HomeState {}

class HomeBloc extends Cubit<HomeState> with BlocLoggy {
  HomeBloc() : super(HomeState());
}
