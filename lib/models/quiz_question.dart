class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswer {
    // 'of' create a new list base in oder created list
    // we do chaining we calling a method on the result of calling another
    // functional method
   final shuffledList = List.of(answers);
   shuffledList.shuffle();
   return shuffledList;
  }
}