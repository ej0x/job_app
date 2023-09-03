import 'package:flutter/material.dart';
import 'package:job_app/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                ),
                // email text fields
                MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false),
                // password text fields

                // sign in button

                // not a member ? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
