import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';

class AnswerOptionsWidget extends StatelessWidget {
  const AnswerOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Options',
              style: TextStyle(color: Colors.white, fontSize: 17.0),
            ),
            SizedBox(height: 15.0),
            ...state.quizzes[state.currentQuestionIndex].allAnswers.map((
              answer,
            ) {
              return Column(
                children: [
                  AnswerOptionWidget(
                    answerText: answer,
                    isCorrect:
                        answer ==
                        state.quizzes[state.currentQuestionIndex].correctAnswer,
                    onTap: (isCorrect) => print(isCorrect),
                  ),
                  SizedBox(height: 10.0),
                ],
              );
            }),
          ],
        );
      },
    );
  }
}

class AnswerOptionWidget extends StatelessWidget {
  final String answerText;
  final bool isCorrect;
  final Function onTap;

  const AnswerOptionWidget({
    super.key,
    required this.answerText,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(isCorrect),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(value: false, groupValue: [], onChanged: (value) {}),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 12.0),
              child: Text(
                answerText,
                style: TextStyle(color: Colors.black, fontSize: 15.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
