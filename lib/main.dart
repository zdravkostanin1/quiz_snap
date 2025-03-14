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
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

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

class QuizCard extends StatelessWidget {
  final bool hasBegunQuiz;

  const QuizCard({super.key, required this.hasBegunQuiz});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0, right: 30.0),
      child:
          hasBegunQuiz
              ? Container(
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
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, right: 8.0),
                        child: Text(
                          "In which anime series does the character Naruto Uzumaki appear?",
                          style: TextStyle(color: Colors.white, fontSize: 15.5),
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
                          SizedBox(width: 15),
                          Container(
                            width: 130,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                "NEXT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "START SNAPPING",
                            style: TextStyle(
                              color: Colors.white,
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
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "BROWSE COLLECTIONS",
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

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xff7D0A0A),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
            child: Text(
              "Anime",
              style: TextStyle(color: Colors.white, fontSize: 15.5),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          width: 125,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xffF8ED8C),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
            child: Text(
              "Entertainemnt",
              style: TextStyle(color: Colors.black, fontSize: 15.5),
            ),
          ),
        ),
      ],
    );
  }
}

class AnswerOptionsWidget extends StatelessWidget {
  const AnswerOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Options', style: TextStyle(color: Colors.white, fontSize: 17.0)),
        SizedBox(height: 15.0),
        AnswerOptionWidget(
          answerText: "Naruto",
          isCorrect: true,
          onTap: (isCorrect) => print(isCorrect),
        ),
        SizedBox(height: 10.0),
        AnswerOptionWidget(
          answerText: "One Piece",
          isCorrect: false,
          onTap: (isCorrect) => print(isCorrect),
        ),
        SizedBox(height: 10.0),
        AnswerOptionWidget(
          answerText: "Dragon Ball Z",
          isCorrect: false,
          onTap: (isCorrect) => print(isCorrect),
        ),
        SizedBox(height: 10.0),
        AnswerOptionWidget(
          answerText: "Attack on Titan",
          isCorrect: false,
          onTap: (isCorrect) => print(isCorrect),
        ),
      ],
    );
  }
}

class AnswerOptionWidget extends StatelessWidget {
  final String answerText;
  final bool isCorrect;
  final Function onTap;

  const AnswerOptionWidget({
    super.key,
    required this.answerText,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(isCorrect),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(value: false, groupValue: [], onChanged: (value) {}),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 12.0),
              child: Text(
                answerText,
                style: TextStyle(color: Colors.black, fontSize: 15.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
