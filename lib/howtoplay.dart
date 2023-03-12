import 'package:flutter/material.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
        Color.fromRGBO(245, 235, 250, 1.0),
        Color.fromRGBO(245, 235, 250, 1.0),
      ])),
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0, bottom: 32.0),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
              Text("Emolearn",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 28.0, color: Color.fromRGBO(62, 20, 82, 1.0)))
            ]),
            const SizedBox(
              height: 24.0,
            ),
            const Text("How to Play:",
                style: TextStyle(
                    fontSize: 40.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
                "Choose any category you wish to play from the playground",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
            const SizedBox(
              height: 24.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("images/howto1.png", width: 197.0, height: 196.1)
            ]),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
                "Choose the level of difficulty you wish to play",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
            const SizedBox(
              height: 24.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("images/howto2.png", width: 197.0, height: 196.1)
            ]),
          ]),
        ),
      )),
    );
  }
}
