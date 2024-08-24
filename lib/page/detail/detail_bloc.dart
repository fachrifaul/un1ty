import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/common/async_value.dart';
import '../../core/logger/loggy_types.dart';
import '../../core/network/response/get_response.dart';
import '../../core/network/service/http_bin_service.dart';

class DetailState {
  final AsyncValue<GetResponse> response;
  DetailState({
    this.response = const AsyncValue.loading(),
  });

  DetailState copyWith({
    AsyncValue<GetResponse>? response,
  }) {
    return DetailState(
      response: response ?? this.response,
    );
  }
}

class DetailBloc extends Cubit<DetailState> with BlocLoggy {
  final service = HttpBinService();

  DetailBloc() : super(DetailState()) {
    initialize();
  }

  void initialize() async {
    final result = await service.get();

    result.when(
      data: (value) {
        emit(state.copyWith(response: AsyncValue.data(value)));
      },
      error: (error, stackTrace) {
        loggy.error(error, stackTrace);
        emit(state.copyWith(response: AsyncValue.error(error, stackTrace)));
      },
    );
  }
}
