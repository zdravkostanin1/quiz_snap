import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snap_quiz/features/home/widgets/answer_options_widget.dart';
import 'package:snap_quiz/features/home/widgets/categories_widget.dart';
import 'package:snap_quiz/features/home/widgets/quick_actions.dart';

class QuizCard extends StatelessWidget {
  final bool hasBegunQuiz;

  const QuizCard({super.key, required this.hasBegunQuiz});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0, right: 30.0),
      child:
          hasBegunQuiz
              ? Column(
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
                        "Question 1 of 10",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 525,
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 3.0,
                              right: 8.0,
                            ),
                            child: Text(
                              "In which anime series does the character Naruto Uzumaki appear?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.5,
                              ),
                              maxLines: 2,
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
                              Container(
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
                                    // TODO: Leave Text widget, or nah?
                                    // Center(
                                    //   child: Text(
                                    //     "NEXT",
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontSize: 15.5,
                                    //       fontWeight: FontWeight.bold,
                                    //     ),
                                    //   ),
                                    // ),
                                    Icon(
                                      LucideIcons.arrowRight,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  QuickActions(hasBegunQuiz: hasBegunQuiz),
                ],
              )
              : Container(
                width: double.infinity,
                height: 525,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are you ready to learn today?",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    SizedBox(height: 20.0),
                    Image.asset(
                      'assets/images/chick.png',
                      width: 150.0,
                      height: 150.0,
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      // TODO: Implement
                      onTap: () {},
                      child: Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "START SNAPPING",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      // TODO: Implement
                      onTap: () {},
                      child: Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xffFFB22C),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "SEE ALL COLLECTIONS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}
