class HardQuestion {
  final String question;
  final String imageUrl;
  final String answer;

  HardQuestion(
      {required this.question, required this.imageUrl, required this.answer});
}

List<HardQuestion> hardList = [
  HardQuestion(
    question: "Guess the fruit",
    imageUrl: "assets/images/watermelon.png",
    answer: "watermelon",
  ),
  HardQuestion(
    question: "Guess the fruit",
    imageUrl: "assets/images/mango_hard.png",
    answer: "mango",
  ),
  HardQuestion(
      question: "Guess the fruit",
      imageUrl: "assets/images/treetomato_hard.png",
      answer: 'treetomato'),
  HardQuestion(
      question: "Guess the fruit",
      imageUrl: "assets/images/pear_hard.png",
      answer: "pear"),
];
