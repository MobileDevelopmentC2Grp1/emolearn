import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:on_boarding/main.dart';
import 'package:on_boarding/start.dart';
import 'login_button.dart';
import 'signup.dart';
import 'textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // user log in method
  Future userLogIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: pwdController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  // inputs controller
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
        Color.fromRGBO(245, 235, 250, 1.0),
        Color.fromRGBO(245, 235, 250, 1.0),
      ])),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const StartScreen())));
                    },
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        side: const BorderSide(
                            width: 1, color: Color.fromRGBO(62, 20, 82, 1.0))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 12.0),
                        child: Row(
                          children: const [
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.0),
                                child: Icon(
                                  FontAwesomeIcons.circleArrowLeft,
                                  color: Color.fromRGBO(62, 20, 82, 1.0),
                                )),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Emolearn",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Color.fromRGBO(62, 20, 82, 1.0)),
                            )
                          ],
                        ))),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const MyHomePage();
              } else {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Stars image
                          const Center(
                            child: Image(
                              image: AssetImage(
                                'images/stars.png',
                              ),
                              fit: BoxFit.contain,
                              width: 120.0,
                              height: 60.0,
                            ),
                          ),

                          //Page description
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Create an account to track your performance",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xFF52143F),
                                  fontFamily: 'Exo Space',
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // email
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Email',
                                style: TextStyle(
                                  color: Color(0xFF52143F),
                                  fontFamily: 'Exo Space',
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 5),

                          MytextFields(
                            controller: emailController,
                            hintText: 'example@gmail.com',
                            obsecureText: false,
                          ),

                          const SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Password',
                                style: TextStyle(
                                  color: Color(0xFF52143F),
                                  fontFamily: 'Exo Space',
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 5),

                          //password
                          MytextFields(
                            controller: pwdController,
                            hintText: '***********',
                            obsecureText: true,
                          ),

                          const SizedBox(height: 25),

                          //sign in button
                          LoginButton(
                            onTap: userLogIn,
                          ),

                          const SizedBox(height: 10.0),

                          // ----------- New here ----------
                          const Text(
                            'New here?',
                            style: TextStyle(
                              color: Color(0xFF52143F),
                              fontFamily: 'Exo Space',
                              fontSize: 20.0,
                            ),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          // sign up button

                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: const Color(0xFF52143F),
                                minimumSize: const Size.fromHeight(59),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                ),
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF52143F)),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const SignupPage())));
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Color(0xFF2C2C3A),
                                  fontFamily: 'Exo Space',
                                  fontSize: 24.0,
                                ),
                              )),
                          const SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
