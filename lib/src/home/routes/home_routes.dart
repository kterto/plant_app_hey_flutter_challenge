import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/dummies/cart_screen.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/dummies/home_root_screen.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/dummies/home_screen.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/dummies/intro_screen.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/presentation/smarties/home_smart_view.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router.gr.dart';

@RoutePage<Never>()
class IntroScreenWrapper extends StatelessWidget {
  const IntroScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const IntroScreen();
}

@RoutePage<Never>()
class HomeRootScreenWrapper extends StatelessWidget {
  const HomeRootScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const HomeRootScreen();
}

@RoutePage<Never>()
class HomeScreenWrapper extends StatelessWidget {
  const HomeScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

@RoutePage<Never>()
class CartScreenWrapper extends StatelessWidget {
  const CartScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const CartScreen();
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
      children: [
        AutoRoute(page: IntroRouteWrapper.page),
        AutoRoute(
          page: HomeRootRouteWrapper.page,
          children: [
            AutoRoute(page: HomeRouteWrapper.page),
            AutoRoute(page: CartRouteWrapper.page),
          ],
        ),
      ],
    ),
  ];
}
