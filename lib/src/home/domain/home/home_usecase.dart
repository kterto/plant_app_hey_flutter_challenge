import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_usecase.freezed.dart';

class HomeUsecase extends Bloc<HomeEvent, HomeState> {
  HomeUsecase() : super(HomeState.inicial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.map(
          started: (event) => _onStarted(event, emit),
          skipIntroPressed: (event) => _onSkipIntroPressed(event, emit),
        );
      },
    );
  }

  _onStarted(_Started event, Emitter<HomeState> emit) {}

  _onSkipIntroPressed(SkipIntroPressed event, Emitter<HomeState> emit) {
    emit(state.copyWith(flow: const HomeRoot()));
  }
}
