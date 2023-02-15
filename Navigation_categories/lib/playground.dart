import 'package:emolearn/category.dart';
import 'package:flutter/material.dart';
import 'setting.dart';

class Playground extends StatelessWidget {
  Playground({super.key});

  final _categories = [];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),

            // children:
            children: [
          Column(children: [
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
                          Padding(
                              padding: EdgeInsets.only(bottom: 2.0),
                              child: Icon(
                                Icons.settings,
                                color: Color.fromRGBO(62, 20, 82, 1.0),
                              )),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Color.fromRGBO(62, 20, 82, 1.0)),
                          )
                        ],
                      )))
            ]),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Hey buddy,",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromRGBO(62, 20, 82, 1.0))),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Let's Play!",
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Color.fromRGBO(62, 20, 82, 1.0))),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/emoji.png',
                  width: 88.0,
                  height: 24.24,
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Stack(children: [
              Card(
                
                // For content and links with slight elevation on the sides
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      constraints: const BoxConstraints.expand(
                        height: 92.0,
                      ),
                      decoration:  BoxDecoration(
                        color: Color.fromRGBO(224, 82, 129, 1.0),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Fruits",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Color.fromRGBO(62, 20, 82, 1.0)),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              Positioned(
                //<-- SEE HERE
                right: 0,
                bottom: 75.0,
                child: Image.asset('images/fruits.png',
                    width: 140.0, height: 75.0),
              ),
              // TextButton(onPressed: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => const VegetableCategory()));
              // }, child: Text("Vegetables"))
            ]),
            SizedBox(
                width: 100.0,
                height: 40.0,
                child: Container(
                  color: Colors.transparent,
                )),
            Container(
              height: 100.0,
              child: Stack(children: [
                Card(
                  // For content and links with slight elevation on the sides
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        constraints: const BoxConstraints.expand(
                          height: 92.0,
                        ),
                        decoration:  BoxDecoration(
                          color: Color.fromRGBO(252, 149, 59, 1.0),
                        
                          borderRadius: BorderRadius.circular(24.0),
                        
                        ),
                        
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Vegetables",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color.fromRGBO(62, 20, 82, 1.0)),
                              )
                            ]),
                      
                      )
                    ],
                  ),
                ),
                Positioned(
                  //<-- SEE HERE
                  right: 0.0,
                  bottom: 70.0,
                  child: Image.asset('images/vegetables.png',
                      width: 140.0, height: 75.0),
                )
              ]),
            )
          ]),
        ]));
  }
}
