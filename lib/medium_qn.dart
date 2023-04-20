class MediumQuestion {
  final String question;
  final String imageUrl;
  final List<Answer> answersList;

  MediumQuestion(
      {required this.question,
      required this.imageUrl,
      required this.answersList});
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<MediumQuestion> getQuestions() {
  List<MediumQuestion> mediumList = [];
  //ADD questions and answer here

  mediumList.add(MediumQuestion(
    question: "Choose the correct answer from the ones given below",
    imageUrl: "images/pear_medium.png",
    answersList: [
      Answer("A    Peach", false),
      Answer("B    Pear", true),
      Answer("C    Paw paw", false)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/coconut_medium.png",
    answersList: [
      Answer("A    Coca-cola", false),
      Answer("B    Groundnuts", false),
      Answer("C    Coconut", true)
    ],
  ));
  return mediumList;
}
