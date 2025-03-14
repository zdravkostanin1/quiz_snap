import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

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
              QuizCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizCard extends StatelessWidget {
  const QuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0, right: 30.0),
      child: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Q:", style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}
