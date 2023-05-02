import 'package:flutter/material.dart';
import 'package:on_boarding/category.dart';

// user can select category to play
class Playground extends StatelessWidget {
  const Playground({super.key});

  // final int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text("Hey buddy,",
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
            Text("Let's play!",
                style: TextStyle(
                    fontSize: 40.0, color: Color.fromRGBO(62, 20, 82, 1.0)))
          ])
        ]),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/emoji.png',
              width: 88.0,
              height: 24.24,
            ),
          ],
        ),
        const SizedBox(
          height: 40.0,
        ),
        // category 1: fruits
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
            child: Image.asset('assets/images/fruits.png', width: 140.0, height: 75.0),
          ),
        ]),
        const SizedBox(
          height: 64.0,
        ),
        // category 2: vegetables
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
            child: Image.asset('assets/images/vegetables.png',
                width: 140.0, height: 75.0),
          ),
        ])
      ],
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Padding(
  //       padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
  //       child: Column(
  //         children: [
  //           Row(mainAxisAlignment: MainAxisAlignment.end, children: [
  //             // opens the settings popup (yet to be implemented)
  //             OutlinedButton(
  //                 onPressed: () {
  //                 },
  //                 style: OutlinedButton.styleFrom(
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(24.0),
  //                     ),
  //                     side: const BorderSide(
  //                         width: 1, color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                 child: Padding(
  //                     padding: const EdgeInsets.symmetric(
  //                         vertical: 12.0, horizontal: 24.0),
  //                     child: Row(
  //                       children: const [
  //                         Text(
  //                           "Settings",
  //                           style: TextStyle(
  //                               fontSize: 24.0,
  //                               color: Color.fromRGBO(62, 20, 82, 1.0)),
  //                         ),
  //                         SizedBox(
  //                           width: 8.0,
  //                         ),
  //                         Padding(
  //                             padding: EdgeInsets.only(bottom: 2.0),
  //                             child: Icon(
  //                               FontAwesomeIcons.gear,
  //                               color: Color.fromRGBO(62, 20, 82, 1.0),
  //                             )),
  //                       ],
  //                     )))
  //           ]),
  //           const SizedBox(
  //             height: 36.0,
  //           ),
  //           Row(children: [
  //             Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: const [
  //                   Text("Hey buddy,",
  //                       style: TextStyle(
  //                           fontSize: 20.0,
  //                           color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                   Text("Let's play!",
  //                       style: TextStyle(
  //                           fontSize: 40.0,
  //                           color: Color.fromRGBO(62, 20, 82, 1.0)))
  //                 ])
  //           ]),
  //           const SizedBox(
  //             height: 12.0,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Image.asset(
  //                 'images/emoji.png',
  //                 width: 88.0,
  //                 height: 24.24,
  //               ),
  //             ],
  //           ),
  //           const SizedBox(
  //             height: 40.0,
  //           ),
  //           // category 1: fruits
  //           Stack(clipBehavior: Clip.none, children: [
  //             // For content and links with slight elevation on the sides
  //             Container(
  //               padding: const EdgeInsets.only(
  //                   left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
  //               constraints: const BoxConstraints.expand(
  //                 height: 92.0,
  //               ),
  //               decoration: BoxDecoration(
  //                   color: const Color.fromRGBO(224, 82, 129, 1.0),
  //                   borderRadius: BorderRadius.circular(24.0)),
  //               child: TextButton(
  //                   onPressed: () {
  //                     Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                             builder: (context) => const FruitCategory()));
  //                   },
  //                   child: const Align(
  //                       alignment: Alignment.bottomLeft,
  //                       child: Text(
  //                         "Fruits",
  //                         style: TextStyle(fontSize: 28.0, color: Colors.white),
  //                       ))),
  //             ),
  //             Positioned(
  //               right: 16.0,
  //               bottom: 65.0,
  //               child: Image.asset('images/fruits.png',
  //                   width: 140.0, height: 75.0),
  //             ),
  //           ]),
  //           const SizedBox(
  //             height: 64.0,
  //           ),
  //            // category 2: vegetables
  //           Stack(clipBehavior: Clip.none, children: [
  //             // For content and links with slight elevation on the sides
  //             Container(
  //               padding: const EdgeInsets.only(
  //                   left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
  //               constraints: const BoxConstraints.expand(
  //                 height: 92.0,
  //               ),
  //               decoration: BoxDecoration(
  //                   color: const Color.fromRGBO(251, 123, 4, 1.0),
  //                   borderRadius: BorderRadius.circular(24.0)),
  //               child: TextButton(
  //                   onPressed: () {
  //                     Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                             builder: (context) => const VegetableCategory()));
  //                   },
  //                   child: const Align(
  //                       alignment: Alignment.bottomLeft,
  //                       child: Text(
  //                         "Vegetables",
  //                         style: TextStyle(fontSize: 28.0, color: Colors.white),
  //                       ))),
  //             ),
  //             Positioned(
  //               right: 16.0,
  //               bottom: 65.0,
  //               child: Image.asset('images/vegetables.png',
  //                   width: 140.0, height: 75.0),
  //             ),
  //           ])
  //         ],
  //       ),
  //     ),
  //     bottomNavigationBar: MoltenBottomNavigationBar(
  //       barColor: const Color.fromRGBO(62, 20, 82, 1.0),
  //       domeHeight: 20.0,
  //       domeCircleColor: const Color.fromRGBO(62, 20, 82, 1.0),
  //       selectedIndex: _selectedIndex,
  //       onTabChange: (clickedIndex) {},
  //       tabs: [
  //         MoltenTab(
  //             icon: const Icon(FontAwesomeIcons.question),
  //             title: const Text('Help'),
  //             selectedColor: const Color.fromRGBO(140, 214, 92, 1.0),
  //             unselectedColor: Colors.white),
  //         MoltenTab(
  //             icon: const Icon(FontAwesomeIcons.play),
  //             title: const Text('Playground',
  //                 style: TextStyle(
  //                     fontSize: 20.0,
  //                     color: Color.fromRGBO(140, 214, 92, 1.0))),
  //             selectedColor: const Color.fromRGBO(140, 214, 92, 1.0),
  //             unselectedColor: Colors.white),
  //         MoltenTab(
  //             icon: const Icon(FontAwesomeIcons.solidUser),
  //             title: const Text('Profile'),
  //             selectedColor: const Color.fromRGBO(140, 214, 92, 1.0),
  //             unselectedColor: Colors.white),
  //       ],
  //     ),
  //   );
  // }
}
