import 'package:challege_app/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String) onSelectAnswer;
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    // SizedBox is used to wrap the Column to makes sure that the Column takes full
    // takes full width of the screen
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Column(
              // This property centers the widgets in the column on the verticle
              // axis ( main axis)
              mainAxisAlignment: MainAxisAlignment.center,
              // Children unde column are streched to maximum possible width
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.text,
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight
                          .bold), //TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ...currentQuestion.shuffleAnswers().map((item) =>
                    AnswerButton(text: item, onTap: () => answerQuestion(item)))
              ]),
        ));
  }
}
