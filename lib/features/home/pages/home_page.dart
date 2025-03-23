import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';
import 'package:snap_quiz/features/home/widgets/quiz_card.dart';
import 'package:snap_quiz/features/home/widgets/featured_collections_widget.dart';
import 'package:snap_quiz/features/home/widgets/quiz_prompt_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF8EF),
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                    // If the quiz has begun, show the QuizCard, otherwise show the QuizPromptCard widget.
                    state.hasBegunQuiz ? QuizCard() : QuizPromptCard(),
                    SizedBox(height: 15.0),
                    // If the quiz has begun, show the featured collections, otherwise show an empty container.
                    state.hasBegunQuiz ? Container() : FeaturedCollections(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
