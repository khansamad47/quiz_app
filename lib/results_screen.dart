import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  const ResultsScreen({super.key, required this.chosenAnswers});

// Returns a list of maps where each map contains
//List<Map<String, Object>> getSummaryData()
//{
//
//}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: const Column(
          children: [Text("Results")],
        ),
      ),
    );
  }
}
