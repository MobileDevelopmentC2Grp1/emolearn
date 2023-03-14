import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileNoAccount extends StatelessWidget {
  const ProfileNoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       // opens the settings popup (yet to be implemented)
      //       const Text("Emolearn",
      //           textAlign: TextAlign.start,
      //           style: TextStyle(
      //               fontSize: 28.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
      //       OutlinedButton(
      //           onPressed: () {},
      //           style: OutlinedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(24.0),
      //               ),
      //               side: const BorderSide(
      //                   width: 1, color: Color.fromRGBO(62, 20, 82, 1.0))),
      //           child: Padding(
      //               padding: const EdgeInsets.symmetric(
      //                   vertical: 4.0, horizontal: 12.0),
      //               child: Row(
      //                 children: const [
      //                   Text(
      //                     "Settings",
      //                     style: TextStyle(
      //                         fontSize: 24.0,
      //                         color: Color.fromRGBO(62, 20, 82, 1.0)),
      //                   ),
      //                   SizedBox(
      //                     width: 8.0,
      //                   ),
      //                   Padding(
      //                       padding: EdgeInsets.only(bottom: 2.0),
      //                       child: Icon(
      //                         FontAwesomeIcons.gear,
      //                         color: Color.fromRGBO(62, 20, 82, 1.0),
      //                       )),
      //                 ],
      //               ))),
      //     ]),
      // const SizedBox(
      //   height: 8.0,
      // ),
      Card(
        elevation: 2.0,
        color: const Color.fromRGBO(251, 247, 253, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 40.0, bottom: 40.0),
              child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("images/stars.png", width: 136.0, height: 65.0)
                ]),
                const SizedBox(
                  height: 32.0,
                ),
                const Text("Create an account to track your performance",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromRGBO(62, 20, 82, 1.0))),
                const SizedBox(
                  height: 64.0,
                ),
                TextButton(
                    onPressed: ((() {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: ((context) => const ProfileNoAccount())));
                    })),
                    child: Container(
                        // width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(62, 20, 82, 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 32.0),
                            child: Text(
                              "Create an account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24.0, color: Colors.white),
                            )))),
                const SizedBox(
                  height: 64.0,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size.fromWidth(310.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        side: const BorderSide(
                            width: 1, color: Color.fromRGBO(62, 20, 82, 1.0))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Privacy and security",
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
                                  FontAwesomeIcons.angleRight,
                                  color: Color.fromRGBO(62, 20, 82, 1.0),
                                  size: 18.0,
                                )),
                          ],
                        ))),
              ]))),
    ]);
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //       decoration: const BoxDecoration(
  //           gradient: RadialGradient(colors: [
  //         Color.fromRGBO(245, 235, 250, 1.0),
  //         Color.fromRGBO(245, 235, 250, 1.0),
  //       ])),
  //       child: Scaffold(
  //         body: SingleChildScrollView(
  //             child: Padding(
  //           padding: const EdgeInsets.only(
  //               left: 16.0, right: 16.0, top: 32.0, bottom: 32.0),
  //           child: Column(children: [
  //             Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   // opens the settings popup (yet to be implemented)
  //                   const Text("Emolearn",
  //                       textAlign: TextAlign.start,
  //                       style: TextStyle(
  //                           fontSize: 28.0,
  //                           color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                   OutlinedButton(
  //                       onPressed: () {},
  //                       style: OutlinedButton.styleFrom(
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(24.0),
  //                           ),
  //                           side: const BorderSide(
  //                               width: 1,
  //                               color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                       child: Padding(
  //                           padding: const EdgeInsets.symmetric(
  //                               vertical: 4.0, horizontal: 12.0),
  //                           child: Row(
  //                             children: const [
  //                               Text(
  //                                 "Settings",
  //                                 style: TextStyle(
  //                                     fontSize: 24.0,
  //                                     color: Color.fromRGBO(62, 20, 82, 1.0)),
  //                               ),
  //                               SizedBox(
  //                                 width: 8.0,
  //                               ),
  //                               Padding(
  //                                   padding: EdgeInsets.only(bottom: 2.0),
  //                                   child: Icon(
  //                                     FontAwesomeIcons.gear,
  //                                     color: Color.fromRGBO(62, 20, 82, 1.0),
  //                                   )),
  //                             ],
  //                           ))),
  //                 ]),
  //             const SizedBox(
  //               height: 56.0,
  //             ),
  //             Card(
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(16.0)),
  //                 child: Padding(
  //                     padding: const EdgeInsets.only(
  //                         left: 16.0, right: 16.0, top: 40.0, bottom: 40.0),
  //                     child: Column(children: [
  //                       Row(
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: [
  //                             Image.asset("images/stars.png",
  //                                 width: 136.0, height: 65.0)
  //                           ]),
  //                       const SizedBox(
  //                         height: 32.0,
  //                       ),
  //                       const Text(
  //                           "Create an account to track your performance",
  //                           textAlign: TextAlign.center,
  //                           style: TextStyle(
  //                               fontSize: 20.0,
  //                               color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                       const SizedBox(
  //                         height: 64.0,
  //                       ),
  //                       TextButton(
  //                           onPressed: ((() {
  //                             // Navigator.pushReplacement(
  //                             //     context,
  //                             //     MaterialPageRoute(
  //                             //         builder: ((context) => const ProfileNoAccount())));
  //                           })),
  //                           child: Container(
  //                               // width: MediaQuery.of(context).size.width,
  //                               decoration: const BoxDecoration(
  //                                   color: Color.fromRGBO(62, 20, 82, 1.0),
  //                                   borderRadius: BorderRadius.all(
  //                                       Radius.circular(24.0))),
  //                               child: const Padding(
  //                                   padding: EdgeInsets.symmetric(
  //                                       vertical: 12.0, horizontal: 32.0),
  //                                   child: Text(
  //                                     "Create an account",
  //                                     textAlign: TextAlign.center,
  //                                     style: TextStyle(
  //                                         fontSize: 24.0, color: Colors.white),
  //                                   )))),
  //                       const SizedBox(
  //                         height: 64.0,
  //                       ),
  //                       OutlinedButton(
  //                           onPressed: () {},
  //                           style: OutlinedButton.styleFrom(
  //                               fixedSize: const Size.fromWidth(310.0),
  //                               shape: RoundedRectangleBorder(
  //                                 borderRadius: BorderRadius.circular(24.0),
  //                               ),
  //                               side: const BorderSide(
  //                                   width: 1,
  //                                   color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                           child: Padding(
  //                               padding: const EdgeInsets.symmetric(
  //                                   vertical: 12.0, horizontal: 24.0),
  //                               child: Row(
  //                                 mainAxisAlignment: MainAxisAlignment.center,
  //                                 children: const [
  //                                   Text(
  //                                     "Privacy and security",
  //                                     style: TextStyle(
  //                                         fontSize: 24.0,
  //                                         color:
  //                                             Color.fromRGBO(62, 20, 82, 1.0)),
  //                                   ),
  //                                   SizedBox(
  //                                     width: 8.0,
  //                                   ),
  //                                   Padding(
  //                                       padding: EdgeInsets.only(bottom: 2.0),
  //                                       child: Icon(
  //                                         FontAwesomeIcons.angleRight,
  //                                         color:
  //                                             Color.fromRGBO(62, 20, 82, 1.0),
  //                                         size: 18.0,
  //                                       )),
  //                                 ],
  //                               ))),
  //                     ]))),
  //           ]),
  //         )),
  //       ));
  // }
}

class ProfileWithAccount extends StatelessWidget {
  const ProfileWithAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       // opens the settings popup (yet to be implemented)
      //       const Text("Emolearn",
      //           textAlign: TextAlign.start,
      //           style: TextStyle(
      //               fontSize: 28.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
      //       OutlinedButton(
      //           onPressed: () {},
      //           style: OutlinedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(24.0),
      //               ),
      //               side: const BorderSide(
      //                   width: 1, color: Color.fromRGBO(62, 20, 82, 1.0))),
      //           child: Padding(
      //               padding: const EdgeInsets.symmetric(
      //                   vertical: 4.0, horizontal: 12.0),
      //               child: Row(
      //                 children: const [
      //                   Text(
      //                     "Settings",
      //                     style: TextStyle(
      //                         fontSize: 24.0,
      //                         color: Color.fromRGBO(62, 20, 82, 1.0)),
      //                   ),
      //                   SizedBox(
      //                     width: 8.0,
      //                   ),
      //                   Padding(
      //                       padding: EdgeInsets.only(bottom: 2.0),
      //                       child: Icon(
      //                         FontAwesomeIcons.gear,
      //                         color: Color.fromRGBO(62, 20, 82, 1.0),
      //                       )),
      //                 ],
      //               ))),
      //     ]),
      const SizedBox(
        height: 8.0,
      ),
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 40.0, bottom: 40.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("images/profile.png", width: 216.0, height: 68.95)
                ]),
                const SizedBox(
                  height: 32.0,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("images/avatar.png", width: 136.0, height: 65.0),
                  const SizedBox(
                    width: 4.0,
                  ),
                  const Text(
                    "<Username here>",
                    style: TextStyle(
                        fontSize: 20.0, color: Color.fromRGBO(62, 20, 82, 1.0)),
                  ),
                ]),
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Points:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(62, 20, 82, 1.0)),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        "<Score here>",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(62, 20, 82, 1.0)),
                      ),
                    ]),
              ],
            ),
          )),
    ]);
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: const BoxDecoration(
  //         gradient: RadialGradient(colors: [
  //       Color.fromRGBO(245, 235, 250, 1.0),
  //       Color.fromRGBO(245, 235, 250, 1.0),
  //     ])),
  //     child: Scaffold(
  //       body: SingleChildScrollView(
  //         child: Padding(
  //           padding: const EdgeInsets.only(
  //               left: 16.0, right: 16.0, top: 32.0, bottom: 32.0),
  //           child: Column(children: [
  //             Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   // opens the settings popup (yet to be implemented)
  //                   const Text("Emolearn",
  //                       textAlign: TextAlign.start,
  //                       style: TextStyle(
  //                           fontSize: 28.0,
  //                           color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                   OutlinedButton(
  //                       onPressed: () {},
  //                       style: OutlinedButton.styleFrom(
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(24.0),
  //                           ),
  //                           side: const BorderSide(
  //                               width: 1,
  //                               color: Color.fromRGBO(62, 20, 82, 1.0))),
  //                       child: Padding(
  //                           padding: const EdgeInsets.symmetric(
  //                               vertical: 4.0, horizontal: 12.0),
  //                           child: Row(
  //                             children: const [
  //                               Text(
  //                                 "Settings",
  //                                 style: TextStyle(
  //                                     fontSize: 24.0,
  //                                     color: Color.fromRGBO(62, 20, 82, 1.0)),
  //                               ),
  //                               SizedBox(
  //                                 width: 8.0,
  //                               ),
  //                               Padding(
  //                                   padding: EdgeInsets.only(bottom: 2.0),
  //                                   child: Icon(
  //                                     FontAwesomeIcons.gear,
  //                                     color: Color.fromRGBO(62, 20, 82, 1.0),
  //                                   )),
  //                             ],
  //                           ))),
  //                 ]),
  //             const SizedBox(
  //               height: 64.0,
  //             ),
  //             Card(
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(16.0)),
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(
  //                       left: 16.0, right: 16.0, top: 40.0, bottom: 40.0),
  //                   child: Column(
  //                     children: [
  //                       Row(
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: [
  //                             Image.asset("images/profile.png",
  //                                 width: 216.0, height: 68.95)
  //                           ]),
  //                       const SizedBox(
  //                         height: 32.0,
  //                       ),
  //                       Row(
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: [
  //                             Image.asset("images/avatar.png",
  //                                 width: 136.0, height: 65.0),
  //                             const SizedBox(
  //                               width: 4.0,
  //                             ),
  //                             const Text(
  //                               "<Username here>",
  //                               style: TextStyle(
  //                                   fontSize: 20.0,
  //                                   color: Color.fromRGBO(62, 20, 82, 1.0)),
  //                             ),
  //                           ]),
  //                       const SizedBox(
  //                         height: 32.0,
  //                       ),
  //                       Row(
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: const [
  //                             Text(
  //                               "Points:",
  //                               style: TextStyle(
  //                                   fontSize: 20.0,
  //                                   color: Color.fromRGBO(62, 20, 82, 1.0)),
  //                             ),
  //                             SizedBox(
  //                               width: 16.0,
  //                             ),
  //                             Text(
  //                               "<Score here>",
  //                               style: TextStyle(
  //                                   fontSize: 20.0,
  //                                   color: Color.fromRGBO(62, 20, 82, 1.0)),
  //                             ),
  //                           ]),
  //                     ],
  //                   ),
  //                 )),
  //           ]),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
