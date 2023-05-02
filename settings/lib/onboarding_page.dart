import 'package:flutter/material.dart';
import 'package:on_boarding/start.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'content_model.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  _onboardingInfo() async {
    bool show = false;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', show);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
        Color.fromRGBO(245, 235, 250, 1.0),
        Color.fromRGBO(235, 214, 245, 1.0),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 20.0),
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
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          contents[index].image,
                          height: 270,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          contents[index].title,
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Exo Space',
                            color: Color(0xFF2C2C3A),
                          ),
                        ),
                        // const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 10.0),
                          child: Text(
                            contents[index].description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'Exo Space',
                              color: Color(0xFF2C2C3A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => BuildDots(index, context),
              ),
            ),
            Container(
              height: 52,
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  if (currentIndex == contents.length - 1) {
                    await _onboardingInfo();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const StartScreen(),
                        ));
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  backgroundColor: const Color(0xFF52143F),
                ),
                child: Text(
                  currentIndex == contents.length - 1 ? "Get started" : "Next",
                  style: const TextStyle(
                    color: Color(0xFFF0F0F4),
                    fontFamily: 'Exo Space',
                    fontSize: 24.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container BuildDots(int index, BuildContext context) {
    return Container(
      height: 7,
      width: currentIndex == index ? 55.0 : 20.0,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: currentIndex == index
            ? const Color(0xFF52143F)
            : const Color(0xFFC5C5D3),
      ),
    );
  }
}
