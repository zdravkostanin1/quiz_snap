import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:snap_quiz/features/home/models/quiz.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<StartQuiz>(_onStartQuiz);
    on<NextQuestion>(_onNextQuestion);
    on<PreviousQuestion>(_onPreviousQuestion);
    on<SkipQuestion>(_onSkipQuestion);
    on<SelectAnswer>(_onSelectAnswer);
    on<EndQuiz>(_onEndQuiz);
  }

  // Begin the quiz.
  FutureOr<void> _onStartQuiz(StartQuiz event, Emitter<HomeState> emit) async {
    // Fetch the quiz questions from OPENTDB API.
    final response = await http.get(
      Uri.parse('https://opentdb.com/api.php?amount=5&type=multiple'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];
      final List<Question> questions =
          results.map((json) => Question.fromJson(json)).toList();

      // Emit the QuizStarted state with the fetched questions.
      emit(QuizStarted(hasBegunQuiz: true, quizzes: questions));
    }
  }

  FutureOr<void> _onNextQuestion(NextQuestion event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentQuestionIndex: state.currentQuestionIndex + 1));
  }

  FutureOr<void> _onPreviousQuestion(
    PreviousQuestion event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(currentQuestionIndex: state.currentQuestionIndex - 1));
  }

  FutureOr<void> _onSkipQuestion(SkipQuestion event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentQuestionIndex: state.currentQuestionIndex + 1));
  }

  FutureOr<void> _onSelectAnswer(
      SelectAnswer event, Emitter<HomeState> emit) {
    final newSelectedAnswers = Map<int, String>.from(state.selectedAnswers);
    newSelectedAnswers[state.currentQuestionIndex] = event.selectedAnswer;
    emit(state.copyWith(selectedAnswers: newSelectedAnswers));
  }

  FutureOr<void> _onEndQuiz(EndQuiz event, Emitter<HomeState> emit) {
    int score = 0;
    for (int i = 0; i < state.quizzes.length; i++) {
      if (state.selectedAnswers.containsKey(i) &&
          state.selectedAnswers[i] == state.quizzes[i].correctAnswer) {
        score++;
      }
    }
    emit(QuizFinished(
      score: score,
      quizzes: state.quizzes,
      selectedAnswers: state.selectedAnswers,
    ));
  }
}
