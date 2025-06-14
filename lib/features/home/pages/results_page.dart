import 'package:flutter/material.dart';
import 'package:snap_quiz/features/home/models/quiz.dart';

class ResultsPage extends StatelessWidget {
  final int score;
  final List<Question> quizzes;
  final Map<int, String> selectedAnswers;

  const ResultsPage({
    super.key,
    required this.score,
    required this.quizzes,
    required this.selectedAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You scored $score out of ${quizzes.length}'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
} 