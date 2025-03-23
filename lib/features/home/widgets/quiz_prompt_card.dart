import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';

class QuizPromptCard extends StatelessWidget {
  const QuizPromptCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0, right: 30.0),
      child: Container(
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
            Image.asset('assets/images/chick.png', width: 150.0, height: 150.0),
            SizedBox(height: 20.0),
            GestureDetector(
              // TODO: Implement
              onTap: () {
                context.read<HomeBloc>().add(StartQuiz());
              },
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
