import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
          Color.fromRGBO(245, 235, 250, 1.0),
          Color.fromRGBO(245, 235, 250, 1.0),
        ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Emolearn",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 28.0,
                                color: Color.fromRGBO(62, 20, 82, 1.0)))
                      ]),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const Text("Are you ready?",
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Color.fromRGBO(62, 20, 82, 1.0))),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset("images/game-day.png",
                        width: 324.0, height: 350.0)
                  ]),
                  TextButton(
                      onPressed: ((() {})),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(62, 20, 82, 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0))),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 32.0),
                              child: Text(
                                "Play",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24.0, color: Colors.white),
                              )))),
                  const SizedBox(
                    height: 24.0,
                  ),
                  TextButton(
                      onPressed: ((() {})),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(140, 214, 92, 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0))),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 32.0),
                              child: Text(
                                "Save your progress",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24.0, color: Colors.white),
                              ))))
                ],
              ),
            )));
  }
}
