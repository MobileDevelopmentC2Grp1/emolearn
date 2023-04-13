import 'package:flutter/material.dart';
import 'medium_page.dart';
import 'medium_qn.dart';
import 'easy_page.dart';
import 'hard_page.dart';
import 'hard_qn.dart';
import 'easy_qn.dart';

class GameLevel extends StatelessWidget {
  const GameLevel({super.key, required this.level});

  final int level;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
        Color.fromRGBO(245, 235, 250, 1.0),
        Color.fromRGBO(235, 214, 245, 1.0),
      ])),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(245, 235, 250, 1.0),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 32.0),
          child: getGameLevel(level),
        )

            // child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: getGameLevel(level)
            //     // HardPage(hardList: hardList[0]),
            //     // EasyPage(easyList: easyList[0]),
            //     // MediumPage(mediumList: mediumList),
            //     ),
            ),
      ),
    );
  }

  getGameLevel(int no) {
    if (no == 1) {
      return EasyPage(easyList: easyList[0]);
    } else if (no == 2) {
      return MediumPage(mediumList: mediumList);
    } else if (no == 3) {
      return HardPage(hardList: hardList[0]);
    }
  }
}
