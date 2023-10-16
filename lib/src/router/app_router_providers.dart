import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/router/app_router.dart';

class AppRouterProviders {
  static Provider<AppRouter> appRouterProvider = Provider((ref) => AppRouter());
}
