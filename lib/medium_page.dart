import 'package:flutter/material.dart';
import 'medium_qn.dart';

class MediumPage extends StatelessWidget {
  const MediumPage({super.key, required this.mediumList});
  final List<MediumQuestion> mediumList;

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
                mediumList[0].question,
                style: const TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 60, 5, 70)),
              ),
              Image.asset(mediumList[0].imageUrl, height: 200, width: 200)
            ]),
          ),
        ),
        const SizedBox(
          height: 48.0,
        ),
        Chip(
          backgroundColor: Colors.transparent,
          side: const BorderSide(
              color: Color.fromARGB(255, 60, 5, 70), width: 2.0),
          padding: const EdgeInsets.only(left: 60, right: 190),
          avatar: Container(
            alignment: Alignment.center,
            width: 30.0,
            height: 30.0,
            color: const Color.fromARGB(255, 60, 5, 70),
            child: const Text('A',
                textAlign: TextAlign.center,
                style: TextStyle(
                  leadingDistribution: TextLeadingDistribution.even,
                  color: Colors.white,
                  fontSize: 20.0,
                )),
          ),
          label: const Text('Peach',
              style: TextStyle(
                color: Color.fromARGB(255, 60, 5, 70),
                fontSize: 20.0,
              )),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Chip(
          backgroundColor: Colors.transparent,
          side: const BorderSide(
              color: Color.fromARGB(255, 60, 5, 70), width: 2.0),
          padding: const EdgeInsets.only(left: 60, right: 200),
          avatar: Container(
            alignment: Alignment.center,
            width: 30.0,
            height: 30.0,
            color: const Color.fromARGB(255, 60, 5, 70),
            child: const Text('B',
                textAlign: TextAlign.center,
                style: TextStyle(
                  leadingDistribution: TextLeadingDistribution.even,
                  color: Colors.white,
                  fontSize: 20.0,
                )),
          ),
          label: const Text('Pear',
              style: TextStyle(
                color: Color.fromARGB(255, 60, 5, 70),
                fontSize: 20.0,
              )),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Chip(
          backgroundColor: Colors.transparent,
          side: const BorderSide(
              color: Color.fromARGB(255, 60, 5, 70), width: 2.0),
          padding: const EdgeInsets.only(left: 60, right: 170),
          avatar: Container(
            alignment: Alignment.center,
            width: 30.0,
            height: 30.0,
            color: const Color.fromARGB(255, 60, 5, 70),
            child: const Text('C',
                textAlign: TextAlign.center,
                style: TextStyle(
                  leadingDistribution: TextLeadingDistribution.even,
                  color: Colors.white,
                  fontSize: 20.0,
                )),
          ),
          label: const Text('Pawpaw',
              style: TextStyle(
                color: Color.fromARGB(255, 60, 5, 70),
                fontSize: 20.0,
              )),
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
