part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class StartQuiz extends HomeEvent {}

final class EndQuiz extends HomeEvent {}

final class NextQuestion extends HomeEvent {}

final class PreviousQuestion extends HomeEvent {}
