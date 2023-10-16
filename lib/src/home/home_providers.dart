import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plant_app_hey_flutter_challenge/src/home/domain/home/home_usecase.dart';

class HomeProviders {
  static AutoDisposeProvider<HomeUsecase> homeUsecaseProvider =
      AutoDisposeProvider((_) => HomeUsecase());
}
