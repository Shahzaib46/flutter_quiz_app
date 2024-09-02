
class QuizQuestion {
  const QuizQuestion (this.question, this.answers);
  
  final String question; 
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledAmswers = List.of(answers);
    shuffledAmswers.shuffle();
    return shuffledAmswers;
  }
}