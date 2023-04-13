import 'dart:ui';

import 'package:flutter/material.dart';
import 'dialogs.dart';
import 'hard_qn.dart';

class HardPage extends StatefulWidget {
  const HardPage({super.key, required this.hardList});
  final HardQuestion hardList;

  @override
  State<HardPage> createState() => _HardPageState();
}

class _HardPageState extends State<HardPage> {
  // Create a text controller  to retrieve the value
  final _textController = TextEditingController();
  final HelpDialogs hardDialog = HelpDialogs();
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
                      context
                      );
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
            Text(
              widget.hardList.question,
              style: const TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
            ),
            Image.asset(
              widget.hardList.imageUrl,
              width: 200.0,
              height: 200.0,
            )
          ]),
        ),
      ),
      const SizedBox(
        height: 48.0,
      ),
      Column(
        children: [
          // The user will type something here
          TextField(
            cursorColor: Colors.green,
            selectionWidthStyle: BoxWidthStyle.max,
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Color.fromARGB(255, 60, 5, 70)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Color.fromARGB(255, 60, 5, 70))),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              labelText: 'Type answer here...',
              labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 60, 5, 70), fontSize: 20.0),
            ),
            controller: _textController,
          ),
          const SizedBox(
            height: 48.0,
          ),
          TextButton(
              onPressed: ((() {})),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(140, 214, 92, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(24.0))),
                  child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 32.0),
                      child: Text(
                        "Submit",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24.0, color: Colors.white),
                      )))),
        ],
      )
    ]);
  }
}
