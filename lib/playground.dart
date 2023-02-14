import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:on_boarding/category.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      side: const BorderSide(
                          width: 1, color: Color.fromRGBO(62, 20, 82, 1.0))),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      child: Row(
                        children: const [
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Color.fromRGBO(62, 20, 82, 1.0)),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 2.0),
                              child: Icon(
                                FontAwesomeIcons.gear,
                                color: Color.fromRGBO(62, 20, 82, 1.0),
                              )),
                        ],
                      )))
            ]),
            const SizedBox(
              height: 36.0,
            ),
            Row(children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Hey buddy,",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(62, 20, 82, 1.0))),
                    Text("Let's play!",
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Color.fromRGBO(62, 20, 82, 1.0)))
                  ])
            ]),
            const SizedBox(
              height: 64.0,
            ),
            Stack(clipBehavior: Clip.none, children: [
              // For content and links with slight elevation on the sides
              Container(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                constraints: const BoxConstraints.expand(
                  height: 92.0,
                ),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(224, 82, 129, 1.0),
                    borderRadius: BorderRadius.circular(24.0)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FruitCategory()));
                    },
                    child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Fruits",
                          style: TextStyle(fontSize: 28.0, color: Colors.white),
                        ))),
              ),
              Positioned(
                right: 16.0,
                bottom: 65.0,
                child: Image.asset('images/fruits.png',
                    width: 140.0, height: 75.0),
              ),
            ]),
            const SizedBox(
              height: 64.0,
            ),
            Stack(clipBehavior: Clip.none, children: [
              // For content and links with slight elevation on the sides
              Container(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                constraints: const BoxConstraints.expand(
                  height: 92.0,
                ),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(251, 123, 4, 1.0),
                    borderRadius: BorderRadius.circular(24.0)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VegetableCategory()));
                    },
                    child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Vegetables",
                          style: TextStyle(fontSize: 28.0, color: Colors.white),
                        ))),
              ),
              Positioned(
                right: 16.0,
                bottom: 65.0,
                child: Image.asset('images/vegetables.png',
                    width: 140.0, height: 75.0),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
