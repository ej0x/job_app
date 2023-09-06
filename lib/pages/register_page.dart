import 'package:flutter/material.dart';
import 'package:job_app/components/my_button.dart';
import 'package:job_app/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign up user
  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                // logo
                Icon(
                  Icons.work,
                  size: 100,
                  color: Colors.grey[800],
                ),

                const SizedBox(
                  height: 20,
                ),

                // Create Accout meesage
                const Text(
                  "Let's Create an Account",
                  style: TextStyle(fontSize: 20),
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

                // Confirm Password
                MyTextField(
                    controller: confirmPasswordController,
                    hintText: "Confirm Password",
                    obscureText: true),

                const SizedBox(
                  height: 20,
                ),

                // sign up button
                MyButton(onTap: signUp, text: "Sign Up"),

                const SizedBox(
                  height: 20,
                ),
                // Already Member ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
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
