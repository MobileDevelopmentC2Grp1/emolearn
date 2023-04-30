// this class contains the list of all the contacts as list of type Contact Class
class EasyQuestion {
  final String question;
  final String imageUrl;
  final String answer;

  EasyQuestion({
    required this.question,
    required this.imageUrl,
    required this.answer,
  });
}

List<EasyQuestion> easyList = [
  //ADD questions and answer here

  EasyQuestion(
      question: "What fruit is this?",
      imageUrl: "assets/images/grapes.png",
      answer: "GRAPES"),
  EasyQuestion(
      question: "What fruit is this?",
      imageUrl: "assets/images/orange.png",
      answer: "ORANGE"),
  EasyQuestion(
      question: "What fruit is this?",
      imageUrl: "assets/images/pear.png",
      answer: "PEAR"),
];
