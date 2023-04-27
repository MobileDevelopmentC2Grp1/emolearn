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
  final String correctAnswerText;

  Answer(this.answerText, this.isCorrect, this.correctAnswerText);
}

List<MediumQuestion> getQuestions() {
  List<MediumQuestion> mediumList = [];

  mediumList.add(MediumQuestion(
    question: "Choose the correct answer from the ones given below",
    imageUrl: "images/pear_medium.png",
    answersList: [
      Answer("A    Peach", false, "B    Pear"),
      Answer("B    Pear", true, "B    Pear"),
      Answer("C    Paw paw", false, "B    Pear")
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/coconut_medium.png",
    answersList: [
      Answer("A    Coca-cola", false, "C    Coconut"),
      Answer("B    Groundnuts", false, "C    Coconut"),
      Answer("C    Coconut", true, "C    Coconut")
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/apple_medium.png",
    answersList: [
      Answer("A    Apple", true, "A    Apple"),
      Answer("B    Pill", false, "A    Apple"),
      Answer("C    Pomegranate", false, "A    Apple")
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/pineapple_medium.png",
    answersList: [
      Answer("A    Apple", false, "C    Pineapple"),
      Answer("B    Apple Tree", false, "C    Pineapple"),
      Answer("C    Pineapple", true, "C    Pineapple")
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/blueberry_medium.png",
    answersList: [
      Answer("A    Blue", false, "B    Blueberry"),
      Answer("B    Blueberry", true, "B    Blueberry"),
      Answer("C    Cherry", false, "B    Blueberry")
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/dates_medium.png",
    answersList: [
      Answer("A    Calculator", false, "C    Dates"),
      Answer("B    Calender", false, "C    Dates"),
      Answer("C    Dates", true, "C    Dates")
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/papaya_medium.png",
    answersList: [
      Answer("A    Person", false, "C    Dates"),
      Answer("B    Papaya", true, "C    Dates"),
      Answer("C    Papa", false, "C    Dates")
    ],
  ));

  return mediumList;
}
