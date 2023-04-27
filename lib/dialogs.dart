import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:on_boarding/notification_switch.dart';
import 'package:url_launcher/url_launcher.dart';

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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Ink.image(
                              image:
                                  const AssetImage('images/window-close.png'),
                              width: 24,
                              height: 24,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'How to play',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF3E1452),
                            fontSize: 24,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
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
                    height: 300,
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
/*
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                  child: SizedBox(
                    width: 180,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF52143F),
                          minimumSize: const Size.fromHeight(52),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          side: const BorderSide(
                              width: 1, color: Color(0xFF52143F)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Next ",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Color.fromRGBO(62, 20, 82, 1.0)),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.0),
                                child: Icon(
                                  FontAwesomeIcons.circleArrowRight,
                                  color: Color.fromRGBO(62, 20, 82, 1.0),
                                )),
                          ],
                        )),
                  ),
                ),
              ],*/
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
              /*
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                  child: SizedBox(
                    width: 180,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF52143F),
                          minimumSize: const Size.fromHeight(52),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          side: const BorderSide(
                              width: 1, color: Color(0xFF52143F)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Next ",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Color.fromRGBO(62, 20, 82, 1.0)),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.0),
                                child: Icon(
                                  FontAwesomeIcons.circleArrowRight,
                                  color: Color.fromRGBO(62, 20, 82, 1.0),
                                )),
                          ],
                        )),
                  ),
                ),
              ],*/
            );
          });
}

class ShowScoreDialogs {
  Future<void> DialogBox(String message, BuildContext context) async =>
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
/*
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                  child: SizedBox(
                    width: 180,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF52143F),
                          minimumSize: const Size.fromHeight(52),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          side: const BorderSide(
                              width: 1, color: Color(0xFF52143F)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Next ",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Color.fromRGBO(62, 20, 82, 1.0)),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.0),
                                child: Icon(
                                  FontAwesomeIcons.circleArrowRight,
                                  color: Color.fromRGBO(62, 20, 82, 1.0),
                                )),
                          ],
                        )),
                  ),
                ),
              ],*/
            );
          });
}

class SettingsDialog {
//Link to privacy policy
  final Uri _url = Uri.parse(
      'https://docs.google.com/document/d/1PKbKpqLnXx61Bt-OPL15Q7dgB9uSVd__R3C5t1njIig/edit?usp=sharing');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> DialogBox(BuildContext context) async {
    await Hive.openBox("settingsBox");
    
    return showDialog(
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Ink.image(
                          image: const AssetImage('images/window-close.png'),
                          width: 24,
                          height: 24,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Settings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF3E1452),
                        fontSize: 32,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Send me reminders to learn",
                      style: TextStyle(
                          fontSize: 20.0, color: Color.fromRGBO(62, 20, 82, 1.0)),
                    ),
                    SizedBox(
                      width: 24.0,
                    ),
                    NotificationSwitch()
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: _launchUrl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Privacy policy",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromRGBO(62, 20, 82, 1.0)),
                            ),
                            SizedBox(width: 24.0),
                            Icon(
                              FontAwesomeIcons.angleRight,
                              color: Color.fromRGBO(5, 2, 7, 1),
                              size: 18.0,
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
  }
}
