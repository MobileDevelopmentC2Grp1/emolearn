import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileNoAccount extends StatelessWidget {
  const ProfileNoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
          Color.fromRGBO(245, 235, 250, 1.0),
          Color.fromRGBO(245, 235, 250, 1.0),
        ])),
        child: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 32.0, bottom: 32.0),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                // opens the settings popup (yet to be implemented)
                OutlinedButton(
                    onPressed: () {},
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
                        ))),
              ]),
              const SizedBox(
                height: 56.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("images/stars.png", width: 136.0, height: 65.0)
              ]),
              const SizedBox(
                height: 32.0,
              ),
              const Text("Create an account to track your performance",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
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
                      width: MediaQuery.of(context).size.width,
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
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.white),
                          )))),
            ]),
          )),
        ));
  }
}
