import 'package:flutter/material.dart';
import 'package:job_app/components/my_button.dart';
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
                const SizedBox(
                  height: 50,
                ),
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
                const SizedBox(
                  height: 20,
                ),
                // email text fields
                MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false),

                const SizedBox(
                  height: 10,
                ),

                // password text fields
                MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true),

                const SizedBox(
                  height: 20,
                ),

                // sign in button
                MyButton(onTap: () {}, text: "Sign In"),

                const SizedBox(
                  height: 20,
                ),
                // not a member ? register now

                Row(
                  children: [
                    Text("Not a member?"),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('Register Now')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
