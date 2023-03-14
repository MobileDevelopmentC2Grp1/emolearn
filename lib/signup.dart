import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'content_button.dart';
import 'login.dart';
import 'start.dart';
import 'textfields.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({
    super.key,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // inputs controller
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final pwdController = TextEditingController();
  final confirmPwdController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    pwdController.dispose();
    confirmPwdController.dispose();
    super.dispose();
  }

  // user sign in method
  Future userSignIn() async {}
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
        body: Padding(
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
                  const SizedBox(height: 20.0),
                  //Page description
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
                  // Email
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
                    controller: usernameController,
                    hintText: 'example@gmail.com',
                    obsecureText: false,
                  ),

                  const SizedBox(height: 15),

                  // username
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Username',
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
                    controller: usernameController,
                    hintText: 'Dwayne Johnson',
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

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Confirm password',
                        style: TextStyle(
                          color: Color(0xFF52143F),
                          fontFamily: 'Exo Space',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),

                  //confirm password
                  MytextFields(
                    controller: confirmPwdController,
                    hintText: '**********',
                    obsecureText: true,
                  ),

                  const SizedBox(height: 30.0),

                  //sign up button
                  PageButton(
                    onTap: userSignIn,
                  ),

                  const SizedBox(height: 15.0),

                  // ----------- already a member ----------
                  const Text(
                    'Already a member?',
                    style: TextStyle(
                      color: Color(0xFF52143F),
                      fontFamily: 'Exo Space',
                      fontSize: 20.0,
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),
                  // sign in button
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF52143F),
                        minimumSize: const Size.fromHeight(59),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        side:
                            const BorderSide(width: 1, color: Color(0xFF52143F)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const LoginPage())));
                      },
                      child: const Text(
                        'Sign in',
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
        ),
      ),
    );
  }
}
