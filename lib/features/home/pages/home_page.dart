import 'package:flutter/material.dart';
import 'package:snap_quiz/features/home/widgets/quiz_card.dart';
import 'package:snap_quiz/features/home/widgets/featured_collections_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFBF8EF),
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
              SizedBox(height: 15.0),
              FeaturedCollections(),
            ],
          ),
        ),
      ),
    );
  }
}
