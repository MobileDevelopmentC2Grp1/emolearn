// this class contains the list of all the contacts as list of type Contact Class
class EasyQuestion {
  final String question;
  final String imageUrl;
  final String answer;

  EasyQuestion({required this.question, required this.imageUrl,
    required this.answer,
  });
}

final List<EasyQuestion> easyList = [
  EasyQuestion(question: "What fruit is this?", imageUrl: "images/grapes.png", answer: "grapes"
  ),
  EasyQuestion(
      question: "What fruit is this?", imageUrl: "images/orange.png",
      answer: "orange"
      ),
  EasyQuestion(
      question: "What fruit is this?", imageUrl: "images/pear.png",
      answer: "pear"
      ),
];
