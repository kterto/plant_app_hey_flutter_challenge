import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/dummies/intro_screen.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/smarties/home_smart_view.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router.gr.dart';

@RoutePage<Never>()
class IntroScreenWrapper extends StatelessWidget {
  const IntroScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const IntroScreen();
}

@RoutePage<Never>(name: 'HomeSmartRouteWrapper')
class HomeSmartViewWrappper extends StatelessWidget {
  const HomeSmartViewWrappper({super.key});

  @override
  Widget build(BuildContext context) => const HomeSmartView();
}

class HomeRoutes {
  static List<AutoRoute> routes = [
    AutoRoute(
        initial: true,
        page: HomeSmartRouteWrapper.page,
        children: [AutoRoute(page: IntroRouteWrapper.page)]),
  ];
}
