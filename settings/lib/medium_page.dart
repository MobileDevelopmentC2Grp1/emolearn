import 'package:flutter/material.dart';
import 'package:on_boarding/main.dart';
import 'dialogs.dart';
import 'medium_qn.dart';

class MediumPage extends StatefulWidget {
  const MediumPage({super.key});

  @override
  State<MediumPage> createState() => _MediumPageState();
}

class _MediumPageState extends State<MediumPage> {
  final HelpDialogs mediumDialog = HelpDialogs();
  final WrongAnswerDialogs wrongAnswerDialog = WrongAnswerDialogs();
  final CorrectAnswerDialogs correctAnswerDialogs = CorrectAnswerDialogs();
  bool iscorrect = false;

  List<MediumQuestion> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int mediumscore = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Emolearn",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 60, 5, 70),
                )),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      mediumDialog.DialogBox(
                          'MEDIUM - Choose the correct word that accurately matches the word formed by combining the emojis from the list below.',
                          'assets/images/medium_help.png',
                          context);
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/info_icon.png'),
                      width: 38,
                      height: 24,
                    )),
                const SizedBox(
                  width: 8,
                ),
                // Cancel button
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/close_icon.png'),
                      width: 42,
                      height: 28,
                    )),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(color: const Color.fromRGBO(140, 214, 92, 1.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(children: [
              Text(
                "Question ${currentQuestionIndex + 1} of ${questionList.length.toString()}",
                style: const TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
              ),
              Text(
                questionList[currentQuestionIndex].question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
              ),
              Image.asset(
                questionList[currentQuestionIndex].imageUrl,
              ),
            ]),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        _answerList(),
        const SizedBox(
          height: 20.0,
        ),
        _nextQuestion(),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 34,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle:
                  const TextStyle(fontSize: 20.0, fontFamily: 'Exo Space'),
              shape: const StadiumBorder(),
              backgroundColor: isSelected
                  ? const Color(0xFFC384E1)
                  : const Color.fromRGBO(245, 235, 250, 1.0),
              // foregroundColor: isSelected
              //     ? const Color.fromARGB(255, 60, 5, 70)
              //     : Colors.white,
              side: const BorderSide(width: 1, color: Color(0xFF52143F)),
            ),
            onPressed: () {
              bool iscorrect = false;
              if (selectedAnswer == null) {
                if (answer.isCorrect) {
                  mediumscore++;
                }
                setState(() {
                  selectedAnswer = answer;
                });
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 30,
                    color: const Color(0XFF5D1E7B),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(answer.answerText[0],
                          // textAlign: TextAlign.center,
                          // answer.answerText,
                          style: const TextStyle(
                            color: Color(0XFFFFFFFF),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(answer.answerText.substring(1),
                      style: const TextStyle(
                        color: Color(0XFF5D1E7B),
                      )),
                ],
              ),
            )));
  }

  _nextQuestion() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          backgroundColor: const Color.fromRGBO(140, 214, 92, 1.0),
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(
                context: context, builder: (_) => showMediumScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              //showCorrectAnswer();

              currentQuestionIndex++;
            });
          }
        },
        child: Text(
          isLastQuestion ? "Finish" : "Submit",
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  showMediumScoreDialog() {
    return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
          side: BorderSide(
            color: Color(
              0XFF3E1452,
            ),
            width: 2.0,
          ),
        ),
        backgroundColor: const Color.fromRGBO(235, 214, 245, 1.0),
        elevation: 1.0,
        title: Center(
          child: Column(children: [
            Text(
              " Total Score : \n\n $mediumscore out of ${questionList.length.toString()}",
            ),
            const SizedBox(
              height: 24.0,
            ),
            Center(
              child: Row(children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 60, 5, 70),
                  ),
                  child: const Text("Restart Quiz"),
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      currentQuestionIndex = 0;
                      mediumscore = 0;
                      selectedAnswer = null;
                    });
                  },
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 60, 5, 70),
                  ),
                  child: const Text("Playground"),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MyHomePage())));
                  },
                ),
              ]),
            )
          ]),
        ));
  }

  // showCorrectAnswer() {
  //   return AlertDialog(
  //       shape: const RoundedRectangleBorder(
  //         side: BorderSide(
  //           color: Color(
  //             0XFF3E1452,
  //           ),
  //           width: 2.0,
  //         ),
  //       ),
  //       backgroundColor: const Color.fromRGBO(235, 214, 245, 1.0),
  //       elevation: 1.0,
  //       title: Image.asset("assets/images/correct_answer_emoji.png"),
  //       content: ElevatedButton(
  //           child: const Text("Next Question"),
  //           onPressed: () {
  //             currentQuestionIndex++;
  //           }));
  // }
}
