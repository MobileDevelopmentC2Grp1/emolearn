// Importing all required packages
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:on_boarding/main.dart';
import 'package:on_boarding/start.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Creating a staless class named OnBoardingPage
class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  // Creating a list of pages
  final List<PageViewModel> pages = [
    // First onboarding page
    PageViewModel(
      title: 'What is Emolearn?',
      body:
          "It's an emoji- based puzzle game that aims to help kids in their early primary develop memory skills.",
      //Image properties
      image: Center(
        child: Image.asset(
          'assets/images/emolearn.png',
        ),
      ),
      useScrollView: false,
      // Decorations
      decoration: const PageDecoration(
          // Changing thr color of the model
          pageColor: Color.fromRGBO(245, 235, 250, 1.0),
          //Styling the title
          titleTextStyle: TextStyle(
            // height: 48,
            fontSize: 40.0,
            fontFamily: 'Exo Space',
            color: Color(0xFF2C2C3A),
          ),

          // Styling the body
          bodyTextStyle: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Exo Space',
            color: Color(0xFF2C2C3A),
          ),
          imageFlex: 1,
          imagePadding: EdgeInsets.all(2.0),
          titlePadding: EdgeInsets.all(2.0),
          bodyPadding: EdgeInsets.only(top: 3.0, left: 10.0, right: 10.0)),
    ),
    // Page
    // Page 2 - What are Emojis
    PageViewModel(
      title: 'What are Emojis?',
      body:
          "An emoji is a visual representation of an emotion, object, or symbol.",
      //Image properties
      image: Center(
        child: Image.asset(
          'assets/images/3.png',
          width: 350,
          fit: BoxFit.fitHeight,
        ),
      ),
      useScrollView: false,
      // Decorations
      decoration: const PageDecoration(
        // Changing thr color of the model
          pageColor: Color.fromRGBO(245, 235, 250, 1.0),
          //Styling the title
          titleTextStyle: TextStyle(
            // height: 48,
            fontSize: 40.0,
            fontFamily: 'Exo Space',
            color: Color(0xFF2C2C3A),
          ),

          // Styling the body
          bodyTextStyle: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Exo Space',
            color: Color(0xFF2C2C3A),
          ),
          imageFlex: 1,
          imagePadding: EdgeInsets.all(2.0),
          titlePadding: EdgeInsets.all(2.0),
          bodyPadding: EdgeInsets.only(top: 3.0, left: 10.0, right: 10.0)),
    ),
    // Page

    //Paage 3 - How to play section
    PageViewModel(
      title: 'How to play?',
      body: "It’s all about guessing a word emojis represent.",

      // Image properties
      image: Center(
        child: Image.asset(
          'assets/images/1.png',
          width: 350,
          fit: BoxFit.fitHeight,
          // fit: BoxFit.fitHeight,
        ),
      ),
      useScrollView: false,
      // Decorations
      decoration: const PageDecoration(
          // Changing thr color of the model
          pageColor: Color.fromRGBO(245, 235, 250, 1.0),
          //Styling the title
          titleTextStyle: TextStyle(
            // height: 48,
            fontSize: 40.0,
            fontFamily: 'Exo Space',
            color: Color(0xFF2C2C3A),
          ),

          // Styling the body
          bodyTextStyle: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Exo Space',
            color: Color(0xFF2C2C3A),
          ),
          imageFlex: 1,
          imagePadding: EdgeInsets.all(2.0),
          titlePadding: EdgeInsets.all(2.0),
          bodyPadding: EdgeInsets.only(top: 3.0, left: 10.0, right: 10.0)),
    ),
    // Page
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
        Color.fromRGBO(245, 235, 250, 1.0),
        Color.fromRGBO(245, 235, 250, 1.0),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left:16.0, top:25.0),
            child: Text(
              'Emolearn',
              style: TextStyle(
                color: Color(0xFF52143F),
                fontSize: 28.0,
                fontFamily: 'Exo Space',
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        // Defining the height of the appbar
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IntroductionScreen(
            pages: pages,
            dotsDecorator: const DotsDecorator(

              size: Size(12, 12),
              color: Color(0xFFC5C5D3),
              activeSize: Size(20, 20),
              activeColor: Color(0xFF3E1452),
              spacing: EdgeInsets.symmetric(horizontal: 3.0),
              // BorderRadius.circular(16.0),
            ),

            // Boolean show done which keeps checking
            //if the user is at the end

            showDoneButton: true,

            //Done widget
            done: const Text(
              'Done',
              style: TextStyle(
                fontFamily: 'Exo Space',
                fontSize: 20.0,
                color: Color(0xFF3E1452),
              ),
            ),

            // Designing the skip button
            showSkipButton: true,
            skip: const Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Exo Space',
                fontSize: 20.0,
                color: Color(0xFF3E1452),
              ),
            ),

            // Designing the next button
            showNextButton: true,
            next: const Text(
              'Next',
              style: TextStyle(
                fontFamily: 'Exo Space',
                fontSize: 20.0,
                color: Color(0xFF3E1452),
              ),
            ),
            // onDone: () => onDone(context),
            onDone: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) => const StartScreen())));
            },
            curve: Curves.bounceOut,
          ),
        ),
      ),
    );
  }

// function to govern the general opertion of the onboarding screen. 
//It works in a way that renders MyHomePage() when a user clicks done 
//and sets show to false so that the onboarding screen 
//can't show up again unless a user deletes and downloads the app again

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHomePage()));
  }
}
