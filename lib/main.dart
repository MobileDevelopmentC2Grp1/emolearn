import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:on_boarding/dialogs.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding/howtoplay.dart';
import 'package:on_boarding/playground.dart';
import 'package:on_boarding/profile.dart';
import 'package:on_boarding/splash.dart';
import 'package:on_boarding/start.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flame_audio/flame_audio.dart';

// Used to be able to show the
//onboarding screen only once, that's for the first time
bool show = true;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // initialize flutter
  await Hive.initFlutter(); 

  // open the settingsBox
  await Hive.openBox("settingsBox");

  
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
      theme: ThemeData(fontFamily: 'Exo Space'),
      // show the splash screen if it is the user's first time, otherwise redirect to Start screen
      home: show ? const SplashScreen() : const StartScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  static const List<Widget> _pages = <Widget>[
    HowToPlay(),
    Playground(),
    Profile()
  ];

  final SettingsDialog settingsDialog = SettingsDialog();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
          Color.fromRGBO(245, 235, 250, 1.0),
          Color.fromRGBO(235, 214, 245, 1.0),
        ])),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            backgroundColor: const Color.fromRGBO(251, 247, 253, 0),
            actions: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: OutlinedButton(
                      onPressed: () {
                        settingsDialog.DialogBox(context);
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          side: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(62, 20, 82, 1.0))),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
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
                          )))),
            ],
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text("Emolearn",
                style: TextStyle(
                    fontSize: 28.0, color: Color.fromRGBO(62, 20, 82, 1.0))),
          ),
          // appBar: AppBar(
          //   // Here we take the value from the MyHomePage object that was created by
          //   // the App.build method, and use it to set our appbar title.
          //   title: const Text("Emolearn"),
          // ),
          body: SingleChildScrollView(
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
                  child: _pages.elementAt(_selectedIndex))),
          // body: Center(
          //   child: _pages.elementAt(_selectedIndex)
          // ),
          bottomNavigationBar: MoltenBottomNavigationBar(
            barColor: const Color.fromRGBO(62, 20, 82, 1.0),
            domeHeight: 15.0,
            domeCircleColor: const Color.fromRGBO(62, 20, 82, 1.0),
            selectedIndex: _selectedIndex,
            onTabChange: _onTabTapped,
            tabs: [
              MoltenTab(
                  icon: const Icon(FontAwesomeIcons.question),
                  title: const Text('Help',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(140, 214, 92, 1.0))),
                  selectedColor: const Color.fromRGBO(140, 214, 92, 1.0),
                  unselectedColor: Colors.white),
              MoltenTab(
                  icon: const Icon(FontAwesomeIcons.play),
                  title: const Text('Playground',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(140, 214, 92, 1.0))),
                  selectedColor: const Color.fromRGBO(140, 214, 92, 1.0),
                  unselectedColor: Colors.white),
              MoltenTab(
                  icon: const Icon(FontAwesomeIcons.solidUser),
                  title: const Text('Profile',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(140, 214, 92, 1.0))),
                  selectedColor: const Color.fromRGBO(140, 214, 92, 1.0),
                  unselectedColor: Colors.white),
            ],
          ),
        ));
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
