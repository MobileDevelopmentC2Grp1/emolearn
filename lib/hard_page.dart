import 'package:flutter/material.dart';
import 'dialogs.dart';
import 'hard_qn.dart';
import 'main.dart';

class HardPage extends StatefulWidget {
  const HardPage({super.key});
  // final HardQuestion hardList;

  @override
  State<HardPage> createState() => _HardPageState();
}

class _HardPageState extends State<HardPage> {
  // Create a text controller  to retrieve the value
  final _textController = TextEditingController();
  final HelpDialogs hardDialog = HelpDialogs();
  final formKey = GlobalKey<FormState>();
  final WrongAnswerDialogs wrongAnswerDialog = WrongAnswerDialogs();
  final CorrectAnswerDialogs correctAnswerDialogs = CorrectAnswerDialogs();
  int index = 0;
  int hardScore = 0;
  late bool isLastHardQuestion = false;

  // late int questionNo;
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
                    hardDialog.DialogBox(
                        'HARD - Write your answer accurately matches the word formed by combining the emojis.',
                        'images/hard_help.png',
                        context);
                  },
                  child: Ink.image(
                    image: const AssetImage('images/info_icon.png'),
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
                    image: const AssetImage('images/close_icon.png'),
                    width: 42,
                    height: 28,
                  )),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 20.0,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(color: const Color.fromRGBO(140, 214, 92, 1.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
          child: Column(children: [
            if (index <= hardList.length - 1)
              Text(
                "Question ${index + 1} of ${hardList.length.toString()}",
                style: const TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
              ),
            Text(
              hardList[index].question,
              style: const TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
            ),
            Image.asset(
              hardList[index].imageUrl,
              width: 250.0,
              height: 250.0,
            ),
          ]),
        ),
      ),
      const SizedBox(
        height: 48.0,
      ),
      Form(
        key: formKey,
        child: Column(
          children: [
            // The user will type something here
            TextFormField(
              controller: _textController,
              cursorColor: const Color(0XFF8CD65C),
              // selectionWidthStyle: BoxWidthStyle.max,
              decoration: InputDecoration(
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 60, 5, 70)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 60, 5, 70))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                labelText: 'Type answer here...',
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
            hardNextQuestion(),
          ],
        ),
      )
    ]);
  }

  hardNextQuestion() {
    bool isLastHardQuestion = false;
    if (index == hardList.length - 1) {
      isLastHardQuestion = true;
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
          if (isLastHardQuestion) {
            //display score
            setState(() {
              checkHardAnswer();
            });
            await Future.delayed(const Duration(seconds: 3));

            // ignore: use_build_context_synchronously
            showDialog(context: context, builder: (_) => showHardScoreDialog());
          } else {
            //next question
            setState(() {
              checkHardAnswer();
              _textController.clear();

              index++;
            });
          }
        },
        child: Text(
          isLastHardQuestion ? "Finish" : "Submit",
        ),
      ),
    );
  }

  checkHardAnswer() {
    String answer = _textController.text.trim();
    if (answer.toLowerCase() == hardList[index].answer) {
      hardScore++;
      correctAnswerDialogs.DialogBox('You are correct', context);
    } else {
      wrongAnswerDialog.DialogBox(
          'The correct answer is: ${hardList[index].answer}', context);
    }
  }

  showHardScoreDialog() {
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
              " Total Score : \n\n $hardScore out of ${hardList.length.toString()}",
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
                      index = 0;
                      hardScore = 0;
                      _textController.clear();
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
}
