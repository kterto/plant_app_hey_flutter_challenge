// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:plant_app_hey_flutter_challenge/src/home/routes/home_routes.dart'
    as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeSmartRouteWrapper.name: (routeData) {
      return _i2.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.HomeSmartViewWrappper(),
      );
    },
    IntroRouteWrapper.name: (routeData) {
      return _i2.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.IntroScreenWrapper(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeSmartViewWrappper]
class HomeSmartRouteWrapper extends _i2.PageRouteInfo<void> {
  const HomeSmartRouteWrapper({List<_i2.PageRouteInfo>? children})
      : super(
          HomeSmartRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'HomeSmartRouteWrapper';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.IntroScreenWrapper]
class IntroRouteWrapper extends _i2.PageRouteInfo<void> {
  const IntroRouteWrapper({List<_i2.PageRouteInfo>? children})
      : super(
          IntroRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'IntroRouteWrapper';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
