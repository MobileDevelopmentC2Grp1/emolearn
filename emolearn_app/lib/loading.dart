import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() {
    return LoadingScreenState();
  }
}

class LoadingScreenState extends State<LoadingScreen> {
  // @override
  // void initState() {
  //   super.initState();

  //   Timer(const Duration(seconds: 2), ((() {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder: ((context) => const MyHomePage(title: 'Emolearn'))));
  //   })));
  // }

// ---------
  List<String> _statusMessages = ["Loading ...", "Almost there ...", "Done"];

  String _status = "Loading ...";
  int _position = 0;

  void updateProgress() {
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if (_position == 2) {
        print('Cancel timer');
        timer.cancel();
      } else {
        setState(() {
          _position = _position + 1;
          _status = _statusMessages[_position];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_position < 2) {
      updateProgress();
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 20, 82, 1.0),
      body: Center(
          child: Column(
        children: <Widget>[
          const Text(
            "Emolearn",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 48.0),
          Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Container(
                height: 20,
                padding: const EdgeInsets.only(
                    left: 1.5, right: 1.5, top: 1, bottom: 1),
                // color: Colors.amber,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    animation: true,
                    lineHeight: 16.0,
                    animationDuration: 3000,
                    percent: 1.0,
                    barRadius: const Radius.circular(16),
                    progressColor: const Color.fromRGBO(62, 20, 82, 1.0),
                    backgroundColor: Colors.white),
              )),
          const SizedBox(height: 8.0),
          Text(
            _status,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      )),
    );
  }
}
