part of 'home_bloc.dart';

@immutable
class HomeState {
  final bool hasBegunQuiz;
  final List<Question> quizzes;
  final int currentQuestionIndex;
  final Map<int, String> selectedAnswers;

  const HomeState({
    this.hasBegunQuiz = false,
    this.quizzes = const [],
    this.currentQuestionIndex = 0,
    this.selectedAnswers = const {},
  });

  HomeState copyWith({
    bool? hasBegunQuiz,
    List<Question>? quizzes,
    int? currentQuestionIndex,
    Map<int, String>? selectedAnswers,
  }) {
    return HomeState(
      hasBegunQuiz: hasBegunQuiz ?? this.hasBegunQuiz,
      quizzes: quizzes ?? this.quizzes,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
    );
  }
}

final class HomeInitial extends HomeState {}

final class QuizStarted extends HomeState {
  const QuizStarted({
    super.hasBegunQuiz,
    super.quizzes,
    super.currentQuestionIndex,
  });

  // QuizStarted copyWith({
  //   bool? hasBegunQuiz,
  //   List<Question>? quizzes,
  //   int? currentQuestionIndex,
  // }) {
  //   return QuizStarted(
  //     hasBegunQuiz: hasBegunQuiz ?? this.hasBegunQuiz,
  //     quizzes: quizzes ?? this.quizzes,
  //     currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
  //   );
  // }
}

final class QuizFinished extends HomeState {
  final int score;

  const QuizFinished({
    required this.score,
    super.hasBegunQuiz,
    super.quizzes,
    super.currentQuestionIndex,
    super.selectedAnswers,
  });
}
