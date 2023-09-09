import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData iconss;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.iconss});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(iconss),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        // fillColor: Colors.black,
        // filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
