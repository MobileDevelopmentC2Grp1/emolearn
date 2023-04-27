// this class contains the list of all the contacts as list of type Contact Class
class EasyVegQuestion {
  final String question;
  final String imageUrl;
  final String answer;

  EasyVegQuestion({
    required this.question,
    required this.imageUrl,
    required this.answer,
  });
}

List<EasyVegQuestion> easyVegList = [
  //ADD questions and answer here

  EasyVegQuestion(
      question: "What vegetable is this?",
      imageUrl: "images/peas_easy.png",
      answer: "PEAS"),
  EasyVegQuestion(
      question: "Do you know this vegetable?",
      imageUrl: "images/cabbage_easy.png",
      answer: "CABBAGE"),
  EasyVegQuestion(
      question: "What vegetable is this?",
      imageUrl: "images/cucumber_easy.png",
      answer: "CUCUMBER"),
        EasyVegQuestion(
      question: "What is the name of this vegetable?",
      imageUrl: "images/broccoli_easy.png",
      answer: "BROCCOLI"),
        EasyVegQuestion(
      question: "Name the vegetable below",
      imageUrl: "images/raddish_easy.png",
      answer: "RADDISH"),
];
