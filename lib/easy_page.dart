import 'package:flutter/material.dart';
import 'package:on_boarding/main.dart';
import 'dialogs.dart';
import 'easy_qn.dart';
import 'dart:math';
import 'dart:async';

class EasyPage extends StatefulWidget {
  const EasyPage({super.key});

  @override
  State<EasyPage> createState() => _EasyPageState();
}

class _EasyPageState extends State<EasyPage> {
  // Create a text controller  to retrieve the input from the user
  final easytextController = TextEditingController();
  String? currentWord;
  String? missingLetter;

  final HelpDialogs easyDialog = HelpDialogs();
  final formKey = GlobalKey<FormState>();
  final WrongAnswerDialogs wrongAnswerDialog = WrongAnswerDialogs();
  final CorrectAnswerDialogs correctAnswerDialogs = CorrectAnswerDialogs();

  int easyIndex = 0;
  int easyScore = 0;
  bool isFirstPopupVisible = false;

  @override
  void initState() {
    super.initState();
    generateWord();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                    easyDialog.DialogBox(
                        'EASY - Fill in the missing letters in the sequence given below to form the object in the picture.',
                        'assets/images/easy_help.png',
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
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
          child: Column(children: [
            Text(
              "Question ${easyIndex + 1} of ${easyList.length.toString()}",
              style: const TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
            ),
            Text(
              easyList[easyIndex].question,
              style: const TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Image.asset(
              easyList[easyIndex].imageUrl,
              width: 200.0,
              height: 200.0,
            ),
            Text(
              textAlign: TextAlign.center,
              "Hint:\n$currentWord",
              style: const TextStyle(
                  letterSpacing: 4,
                  fontSize: 24,
                  color: Color.fromARGB(255, 60, 5, 70)),
            ),
          ]),
        ),
      ),
      const SizedBox(
        height: 48.0,
      ),
      Form(
        key: formKey,
        child: Column(children: [
          TextFormField(
            maxLength: 1,
            controller: easytextController,
            cursorColor: const Color(0XFF8CD65C),
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Color.fromARGB(255, 60, 5, 70)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Color.fromARGB(255, 60, 5, 70))),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              labelText: 'Type the missing letter here...',
              labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 60, 5, 70), fontSize: 20.0),
              fillColor: const Color(0xFFFFFFFF),
              filled: true,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please fill this field';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 48.0,
          ),
          easyNextQuestion(),
        ]),
      )
    ]);
  }

  generateWord() {
    // randomly select a word from the list
    currentWord = easyList[easyIndex].answer;
    // randomly choose a letter to be missing
    int missingIndex = Random().nextInt(currentWord!.length);
    missingLetter = currentWord?[missingIndex];
    currentWord = currentWord?.replaceFirst(missingLetter!, '◻');
  }

  easyNextQuestion() {
    bool isEasyLastQuestion = false;
    if (easyIndex == easyList.length - 1) {
      isEasyLastQuestion = true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          backgroundColor: const Color.fromRGBO(140, 214, 92, 1.0),
        ),
        onPressed: () async {
          final validated = formKey.currentState!.validate();
          if (!validated) return;

          if (isEasyLastQuestion) {
            //display score

            setState(() {
              checkEasyAnswer();
            });
            await Future.delayed(const Duration(seconds: 3));

            // ignore: use_build_context_synchronously
            showDialog(context: context, builder: (_) => showEasyScoreDialog());
          } else {
            // show dialogue here(whether answer is wrong or correct)

            //next question

            setState(() {
              checkEasyAnswer();
              easytextController.clear();
              easyIndex++;
              generateWord();
            });
          }
        },
        child: Text(
          isEasyLastQuestion ? "Finish" : "Submit",
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  checkEasyAnswer() {
    String userAnswer = easytextController.text.trim();
    if (userAnswer.toLowerCase() == missingLetter!.toLowerCase()) {
      easyScore++;
      correctAnswerDialogs.DialogBox('You are correct', context);
    } else {
      wrongAnswerDialog.DialogBox(
          'The correct answer is: $missingLetter', context);
    }
  }

  showEasyScoreDialog() {
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
            Image.asset(
              "assets/images/star_emoji.png",
              height: 50,
              width: 50,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(children: [
              const Text(" Total Score ",
                  style: TextStyle(
                    fontSize: 24,
                  )),
              Text("$easyScore / ${easyList.length.toString()}",
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold)),
            ]),
            const SizedBox(
              height: 10.0,
            ),
            Column(children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(220, 32),
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromRGBO(140, 214, 92, 1.0),
                ),
                child: const Text("Restart Quiz",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    easyIndex = 0;
                    easyScore = 0;
                    //easyquizFinished = false;
                    generateWord();
                    easytextController.clear();
                  });
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(220, 32),
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 60, 5, 70),
                ),
                child: const Text("Playground",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MyHomePage())));
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
            ])
          ]),
        ));
  }
}
