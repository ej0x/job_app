import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.9),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow),
        ),
        fillColor: Colors.black,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
