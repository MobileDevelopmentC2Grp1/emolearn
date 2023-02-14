import 'package:emolearn/category.dart';
import 'package:flutter/material.dart';
import 'playground.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //backgroundColor: Colors.transparent,
        fontFamily: 'ExoSpace',
      ),
      // home: MyHomePage(),
      home: const FruitCategory(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // Contents of the different screens with layout widgets
  final _pages = [
    Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Padding(padding: EdgeInsets.only(bottom: 8.0), child: Icon(Icons.help)),
      Text("Help (Stay Tuned)"),
    ]),
    Column(children: [Playground()]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Padding(
          // Layout widget
          padding: EdgeInsets.only(bottom: 8.0),
          child: Icon(Icons.account_circle)),
      Text("Profile (Stay Tuned)"),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [
        Color.fromRGBO(245, 235, 250, 1.0),
        Color.fromRGBO(245, 235, 250, 1.0),
      ])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("emolearn"),
        ),
        body: Center(
            // Taking a single child and positions it in the middle of the parent.
            child: _pages.elementAt(_currentIndex)),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(62, 20, 82, 1.0),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: "Help",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: "Playground",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
