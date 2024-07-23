class QuizQuestion {
  const QuizQuestion(this.text,this.answer);

  final String text;
  final List <String> answer;

  List<String> getShuffledAnswer() {
    final shuffledanswer = List.of(answer);
    shuffledanswer.shuffle();
    return shuffledanswer;
  }
}