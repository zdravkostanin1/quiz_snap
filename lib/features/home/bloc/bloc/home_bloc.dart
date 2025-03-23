import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<StartQuiz>(_onStartQuiz);
  }

  FutureOr<void> _onStartQuiz(StartQuiz event, Emitter<HomeState> emit) {
    emit(QuizStarted(hasBegunQuiz: true));
  }
}
