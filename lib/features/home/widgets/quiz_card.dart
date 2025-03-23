import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';
import 'package:snap_quiz/features/home/widgets/answer_options_widget.dart';
import 'package:snap_quiz/features/home/widgets/categories_widget.dart';
import 'package:snap_quiz/features/home/widgets/quick_actions.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    var unescape = HtmlUnescape();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 0, right: 30.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Question ${state.currentQuestionIndex + 1} of ${state.quizzes.length}",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 17.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Text(
                          "Q:",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, right: 8.0),
                        child: Text(
                          unescape.convert(
                            state.quizzes[state.currentQuestionIndex].question,
                          ),
                          style: TextStyle(color: Colors.white, fontSize: 15.5),
                          maxLines: 4,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      CategoriesWidget(),
                      SizedBox(height: 15.0),
                      AnswerOptionsWidget(),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Text(
                              'SKIP',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                "BACK",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeBloc>().add(NextQuestion());
                            },
                            child: Container(
                              width: 130,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xffA9B5DF,
                                ), // TODO: When an answer is selected, change color to a brighther blue
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LucideIcons.arrowRight,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              QuickActions(),
            ],
          ),
        );
      },
    );
  }
}
