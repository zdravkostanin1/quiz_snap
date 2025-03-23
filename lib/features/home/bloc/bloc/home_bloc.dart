import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:snap_quiz/features/home/models/quiz.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<StartQuiz>(_onStartQuiz);
  }

  // Begin the quiz.
  FutureOr<void> _onStartQuiz(StartQuiz event, Emitter<HomeState> emit) async {
    final response = await http.get(
      Uri.parse('https://opentdb.com/api.php?amount=5&type=multiple'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];
      final List<Question> questions =
          results.map((json) => Question.fromJson(json)).toList();
      emit(QuizStarted(hasBegunQuiz: true, quizzes: questions));
    }
  }
}
