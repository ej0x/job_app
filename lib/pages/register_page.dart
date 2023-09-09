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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/signup.png'),
                          fit: BoxFit.scaleDown)),
                ),
                // const SizedBox(
                //   height: 50,
                // ),
                // logo
                // Icon(
                //   Icons.work,
                //   size: 100,
                //   color: Colors.grey[800],
                // ),

                // const SizedBox(
                //   height: 20,
                // ),

                // // Create Accout meesage
                // const Text(
                //   "Let's Create an Account",
                //   style: TextStyle(fontSize: 20),
                // ),
                const SizedBox(
                  height: 20,
                ),
                // email text fields
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  iconss: Icons.email,
                ),

                const SizedBox(
                  height: 10,
                ),

                // password text fields
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  iconss: Icons.password,
                ),

                const SizedBox(
                  height: 20,
                ),

                // Confirm Password
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                  iconss: Icons.password,
                ),

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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(249, 168, 39, 1),
                        ),
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

  // Widget image() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: Container(
  //       width: double.infinity,
  //       height: 200,
  //       decoration: const BoxDecoration(
  //         image: DecorationImage(
  //             image: AssetImage('images/signup.png'), fit: BoxFit.fitHeight),
  //       ),
  //     ),
  //   );
  // }
}
