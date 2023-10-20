import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router.gr.dart';
import 'package:plant_app_hey_flutter_challenge/src/shared/design_system/widgets/plant_app_bottom_navigation_bar.dart';

class HomeRootScreen extends HookConsumerWidget {
  const HomeRootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouteWrapper(),
        CartRouteWrapper(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return PlantAppBottomNavitagionBar(
          currentIndex: tabsRouter.activeIndex,
          onTapItem: (current) {
            tabsRouter.setActiveIndex(current);
          },
        );
      },
    );
  }
}
