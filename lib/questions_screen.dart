import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("Questions"));
  }
}
