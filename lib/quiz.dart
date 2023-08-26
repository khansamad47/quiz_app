import 'package:challege_app/questions.dart';
import 'package:challege_app/questions_screen.dart';
import 'package:challege_app/results_screen.dart';
import 'package:challege_app/start_screen.dart';
import 'package:flutter/material.dart';

enum ScreenType { start, question, result }

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  ScreenType activeScreen = ScreenType.start;
  //Widget? activeScreen;
  final List<String> selectedAnswers = [];

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ScreenType.result;
      });
    }
  }

  // Question: Why is initState required here?
  // Ans: Because we need to pass the startQuiz
  //      handler to StartScreen, now the handler
  //      might not be defined at the time activeScreen
  //      varaible gets created, therefore we use
  //      initState
  //      alternatively use a string id to track current screen
  //@override
  //void initState() {
  //  activeScreen = Scr
  //  super.initState();
  //}

  void startQuiz() {
    setState(() => activeScreen = ScreenType.question);
  }

  Widget getScreenWidget(ScreenType value) {
    switch (value) {
      case ScreenType.start:
        return StartScreen(startQuiz);
      case ScreenType.question:
        return QuestionsScreen(onSelectAnswer: selectAnswer);
      case ScreenType.result:
        return ResultsScreen(chosenAnswers: selectedAnswers);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple, Colors.pink]),
          ),
          child: getScreenWidget(activeScreen),
        ),
      ),
    );
  }
}
