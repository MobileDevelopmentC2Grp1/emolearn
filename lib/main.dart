import 'package:flutter/material.dart';
import 'package:on_boarding/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Used to be able to show the 
//onboarding screen only once, that's for the first time
bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emolearn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: show ? OnBoardingPage(): const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Emolearn"),
      ),
      body: const Center(
        child: Text(
          'Emolearn',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Exo Space',
          ),
        ),
      ),
    );
  }
}
