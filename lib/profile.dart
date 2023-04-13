import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:on_boarding/login_button.dart';
import 'package:on_boarding/signup.dart';
import 'package:on_boarding/start.dart';

//Link to privacy policy
final Uri _url = Uri.parse('https://docs.google.com/document/d/1PKbKpqLnXx61Bt-OPL15Q7dgB9uSVd__R3C5t1njIig/edit?usp=sharing');

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const ProfileWithAccount();
        } else {
          return const ProfileNoAccount();
        }
      },
    );
  }
}

class ProfileNoAccount extends StatelessWidget {
  const ProfileNoAccount({super.key});

  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SignupPage())));
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
                    onPressed: _launchUrl,
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
}

class ProfileWithAccount extends StatelessWidget {
  const ProfileWithAccount({super.key});

  Future signingOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

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
                  Text(
                    "${FirebaseAuth.instance.currentUser!.displayName}",
                    style: const TextStyle(
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
                        "0",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(62, 20, 82, 1.0),
                            textBaseline: TextBaseline.alphabetic),
                      ),
                    ]),
                const SizedBox(
                  height: 64.0,
                ),
                TextButton(
                    onPressed: ((() {
                      // add logout logic here
                      signingOut();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StartScreen()));
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
                              "Log Out",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24.0, color: Colors.white),
                            )))),
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
