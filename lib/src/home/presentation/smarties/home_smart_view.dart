import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/domain/home/home_usecase.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/home_providers.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router.gr.dart';

class HomeSmartView extends ConsumerWidget {
  const HomeSmartView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocConsumer<HomeUsecase, HomeState>(
      bloc: ref.watch(HomeProviders.homeUsecaseProvider),
      listener: _listener,
      builder: (context, state) => WillPopScope(
        onWillPop: () async => false,
        child: AutoRouter.declarative(
          routes: (PendingRoutesHandler handler) => _routes(handler, state),
        ),
      ),
    );
  }

  void _listener(BuildContext context, HomeState state) {}

  List<PageRouteInfo<dynamic>> _routes(
    PendingRoutesHandler handler,
    HomeState state,
  ) {
    return state.flow.when(
      intro: () => const [IntroRouteWrapper()],
      homeRoot: () => const [HomeRootRouteWrapper()],
    );
  }
}
