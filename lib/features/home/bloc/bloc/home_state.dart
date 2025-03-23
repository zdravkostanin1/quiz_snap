part of 'home_bloc.dart';

@immutable
sealed class HomeState {
  final bool hasBegunQuiz;
  final List<Question> quizzes;
  final int currentQuestionIndex;

  const HomeState({
    this.hasBegunQuiz = false,
    this.quizzes = const [],
    this.currentQuestionIndex = 1,
  });
}

final class HomeInitial extends HomeState {}

final class QuizStarted extends HomeState {
  const QuizStarted({
    super.hasBegunQuiz,
    super.quizzes,
    super.currentQuestionIndex,
  });
}
