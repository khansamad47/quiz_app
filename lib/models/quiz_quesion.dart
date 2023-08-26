class QuizQuestion {
  final String text;
  final List<String> answers;
  const QuizQuestion(this.text, this.answers);

  List<String> shuffleAnswers() {
    List<String> localCopy = List<String>.of(answers);
    localCopy.shuffle();
    return localCopy;
  }
}
