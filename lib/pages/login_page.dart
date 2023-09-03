import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // logo
              Icon(
                Icons.work,
                size: 80,
                color: Colors.grey[800],
              ),

              // welcome back message
              const Text(
                "WELCOME BACK",
                style: TextStyle(fontSize: 25),
              )
              // email text fields

              // password text fields

              // sign in button

              // not a member ? register now
            ],
          ),
        ),
      ),
    );
  }
}
