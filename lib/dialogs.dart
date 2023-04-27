import 'package:flutter/material.dart';


class HelpDialogs {
  Future<void> DialogBox(
          String message, String imageUrl, BuildContext context) async =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(
                    0XFF3E1452,
                  ),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              backgroundColor: const Color.fromRGBO(235, 214, 245, 1.0),
              elevation: 1.0,
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'How to play:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF3E1452),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Ink.image(
                          image: const AssetImage('images/window-close.png'),
                          width: 24,
                          height: 24,
                        )),
                  ],
                ),
              ),
              content: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0XFF3E1452),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    imageUrl,
                    height: 380,
                  ),
                ],
              ),
            );
          });
}

class WrongAnswerDialogs {
  Future<void> DialogBox(
    String message,
    BuildContext context,
  ) async =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.of(context).pop();
            });
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(
                    0XFF3E1452,
                  ),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              backgroundColor: const Color.fromRGBO(235, 214, 245, 1.0),
              elevation: 1.0,
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/incorrect.png',
                      height: 50,
                      width: 166,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Oops!... wrong answer',
                      style: TextStyle(
                        color: Color(0XFF9B0404),
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              content: Padding(
                padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Color(0XFF3E721D),
                    fontSize: 24,
                  ),
                ),
              ),

            );
          });
}

class CorrectAnswerDialogs {
  Future<void> DialogBox(String message, BuildContext context) async =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.of(context).pop();
            });
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(
                    0XFF3E1452,
                  ),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              backgroundColor: const Color.fromRGBO(235, 214, 245, 1.0),
              elevation: 1.0,
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/correct.png',
                      height: 50,
                      width: 166,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
              content: Padding(
                padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0XFF3E721D),
                    fontSize: 24,
                  ),
                ),
              ),
            );
          });
}



class UnansweredDialogs {
  Future<void> DialogBox(String message, BuildContext context) async =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.of(context).pop();
            });
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(
                    0XFF9B0404,
                  ),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              backgroundColor: const Color.fromRGBO(235, 214, 245, 1.0),
              elevation: 1.0,
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/alert.png',
                      height: 50,
                      width: 166,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
              content: Padding(
                padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0XFF9B0404),
                    fontSize: 24,
                  ),
                ),
              ),
            );
          });
}
