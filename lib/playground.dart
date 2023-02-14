import 'package:emolearn/category.dart';
import 'package:flutter/material.dart';

import 'setting.dart';

class Playground extends StatelessWidget {
  Playground({super.key});

  final _categories = [
    Stack(children: [
    /*  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('fruits.png', width: 200.0, height: 200.0),
        ],
      ),*/
      Card(
        // For content and links with slight elevation on the sides
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: const BoxConstraints.expand(
                height: 92.0, 
                
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(224, 82, 129, 1.0),
              ),
            ),
          ],
        ),
      ),
      Positioned( //<-- SEE HERE
      right: 0,
      bottom: 75.0,
      child: Image.asset('images/fruits.png', width: 140.0, height: 75.0),
      ),
      // TextButton(onPressed: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => const VegetableCategory()));
      // }, child: Text("Vegetables"))
  ]
  ),
    

    SizedBox(
      width: 100.0,
      height: 60.0,
      child: Container(
              color: Colors.transparent,)
    ),

    Container(
      height: 100.0,
      child: Stack(
        
        children:[ Card(
          // For content and links with slight elevation on the sides
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  constraints: const BoxConstraints.expand(
                    height: 92.0,
              
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(252, 149, 59, 1.0),
                  ),
                  alignment: Alignment.topRight,
                  /*child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('images/vegetables.png', width: 200.0, height: 200.0),
                    ],
                  ))*/
          )],
          ),
        ),
        Positioned(
          //<-- SEE HERE
          right: 0.0,
          bottom: 70.0,
          child: Image.asset('images/vegetables.png',width: 140.0, height: 75.0),
        )
        ]
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
      children: _categories,
    ));
  }
}

/* Align(
    alignment: Alignment.topRight,
    child: (ElevatedButton.icon(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Setting()));
        },
        label: const Text('Settings'),
        icon: const Icon(
          Icons.settings,
          size: 24.0,
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))))),
  );*/
