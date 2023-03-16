import 'package:flutter/material.dart';

class MytextFields extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;

  const MytextFields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        enabledBorder:  OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF52143F)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF5D1E7B)),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: const Color(0xFFFFFFFF),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF2C2C3A),
          fontSize: 20.0,
          fontFamily: 'Exo Space',
        ),
      ),
    );
  }
}
