import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router_providers.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/plant_app_theme.dart';

class PlantApp extends ConsumerWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'PlantAppHeyFlutterChallenge',
      routerConfig: ref.read(AppRouterProviders.appRouterProvider).config(),
      theme: PlantAppTheme.data,
    );
  }
}
