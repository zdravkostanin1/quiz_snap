import 'package:flutter/material.dart';
import 'package:snap_quiz/features/home/widgets/quiz_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "SnapQuiz",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              QuizCard(hasBegunQuiz: false),
            ],
          ),
        ),
      ),
    );
  }
}
