import 'package:auto_route/auto_route.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/routes/home_routes.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [...HomeRoutes.routes];
}
