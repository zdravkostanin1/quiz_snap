import 'package:flutter/material.dart';
import 'package:snap_quiz/features/home/pages/home_page.dart';
import 'package:snap_quiz/features/home/widgets/quiz_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
