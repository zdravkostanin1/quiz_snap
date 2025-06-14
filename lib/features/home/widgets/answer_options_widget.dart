import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';

class AnswerOptionsWidget extends StatelessWidget {
  const AnswerOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var unescape = HtmlUnescape();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final currentQuestion = state.quizzes[state.currentQuestionIndex];
        final selectedAnswer =
            state.selectedAnswers[state.currentQuestionIndex];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Options',
              style: TextStyle(color: Colors.white, fontSize: 17.0),
            ),
            SizedBox(height: 15.0),
            ...currentQuestion.allAnswers.map((
              answer,
            ) {
              return Column(
                children: [
                  AnswerOptionWidget(
                    answerText: unescape.convert(answer),
                    isSelected: selectedAnswer == answer,
                    onTap: () {
                      context
                          .read<HomeBloc>()
                          .add(SelectAnswer(answer));
                    },
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
  final bool isSelected;
  final VoidCallback onTap;

  const AnswerOptionWidget({
    super.key,
    required this.answerText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffA9B5DF) : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
              value: isSelected,
              groupValue: true,
              onChanged: (value) {
                onTap();
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
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
