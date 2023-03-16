import 'package:flutter/material.dart';
import 'package:on_boarding/main.dart';
import 'easy_ans.dart';
import 'easy_qn.dart';

class EasyPage extends StatelessWidget {
  const EasyPage({super.key, required this.easyList});
  final EasyQuestion easyList;

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
                    onTap: () {},
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
          height: 24.0,
        ),
        Container(
          // ignore: sort_child_properties_last
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
                easyList.question,
                style: const TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Image.asset(easyList.imageUrl, height: 150, width: 158.82)
            ]),
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        const WordGame(),
        const SizedBox(
          height: 24.0,
        ),
        TextButton(
            onPressed: ((() {})),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(140, 214, 92, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(24.0))),
                child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0),
                    child: Text(
                      "Submit",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    )))),
      ],
    );
  }
}
