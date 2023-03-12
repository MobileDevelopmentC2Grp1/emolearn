import 'package:flutter/material.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
      Color.fromRGBO(245, 235, 250, 1.0),
      Color.fromRGBO(245, 235, 250, 1.0),
    ])));
  }
}
