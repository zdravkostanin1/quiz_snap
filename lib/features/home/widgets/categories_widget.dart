import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff7D0A0A),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  state.quizzes[state.currentQuestionIndex].category,
                  style: TextStyle(color: Colors.white, fontSize: 15.5),
                ),
              ),
            ),
            SizedBox(width: 10.0),
          ],
        );
      },
    );
  }
}
