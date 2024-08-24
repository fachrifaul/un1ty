import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/async_value.dart';
import '../../logger/loggy_types.dart';
import 'detail_bloc.dart';

class DetailViewParams {
  final int id;

  const DetailViewParams({
    required this.id,
  });
}

class DetailPage extends StatelessWidget {
  final DetailViewParams params;

  const DetailPage({
    super.key,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailBloc(),
      child: DetailView(
        params: params,
      ),
    );
  }
}

class DetailView extends StatefulWidget {
  final DetailViewParams params;

  const DetailView({
    super.key,
    required this.params,
  });

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> with UiLoggy {
  @override
  Widget build(BuildContext context) {
    loggy.info('lalal');
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Detail ${widget.params.id}'),
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          body: SafeArea(
            child: state.response.when(
              data: (value) {
                return Text('data ${state.response.asData?.value.toJson()}');
              },
              loading: () => const Text('loading'),
              error: (error, stackTrace) => const Text('error'),
            ),
          ),
        );
      },
    );
  }
}
