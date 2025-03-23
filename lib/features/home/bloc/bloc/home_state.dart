part of 'home_bloc.dart';

@immutable
sealed class HomeState {
  final bool hasBegunQuiz;

  const HomeState({this.hasBegunQuiz = false});
}

final class HomeInitial extends HomeState {}

final class QuizStarted extends HomeState {
  const QuizStarted({super.hasBegunQuiz});
}
