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

  mediumList.add(MediumQuestion(
    question: "Choose the correct answer from the ones given below",
    imageUrl: "images/Eggplant_medium.png",
    answersList: [
      Answer("A    Eggplant", true),
      Answer("B    Eggs", false),
      Answer("C    Plant", false)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/carrot_medium.png",
    answersList: [
      Answer("A    Car", false),
      Answer("B    Rat", false),
      Answer("C    Carrot", true)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/olive_medium.png",
    answersList: [
      Answer("A    Olives", true),
      Answer("B    Orange", false),
      Answer("C    Leaves", false)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/onion_medium.png",
    answersList: [
      Answer("A    Apple", false),
      Answer("B    Onion", true),
      Answer("C    Iron", false)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/pepper_medium.png",
    answersList: [
      Answer("A    Water", false),
      Answer("B    Cup", false),
      Answer("C    Pepper", true)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/tomato_medium.png",
    answersList: [
      Answer("A    Potato", false),
      Answer("B    Tomato", true),
      Answer("C    Feet", false)
    ],
  ));

  mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/ginger_medium.png",
    answersList: [
      Answer("A    Ginger", true),
      Answer("B    Pepper Jar", false),
      Answer("C    Jar", false)
    ],
  ));

   mediumList.add(MediumQuestion(
    question: "Which fruit is this?",
    imageUrl: "assets/images/garlic_medium.png",
    answersList: [
      Answer("A    Garlic", true),
      Answer("B    Ice-cream", false),
      Answer("C    Girl", false)
    ],
  ));

  return mediumList;
}
