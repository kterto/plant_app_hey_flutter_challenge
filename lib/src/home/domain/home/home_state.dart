part of 'home_usecase.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    required HomeAction action,
    required HomeFlow flow,
  }) = _HomeState;

  factory HomeState.inicial() => const HomeState(
        action: _Idle(),
        flow: Intro(),
      );
}

@freezed
class HomeFlow with _$HomeFlow {
  const factory HomeFlow.intro() = Intro;
  const factory HomeFlow.homeRoot() = HomeRoot;
}

@freezed
class HomeAction with _$HomeAction {
  const factory HomeAction.idle() = _Idle;
  const factory HomeAction.popFlow() = _PopFlow;
}
