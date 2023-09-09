import 'package:flutter/material.dart';
import 'package:job_app/components/my_button.dart';
import 'package:job_app/components/my_text_field.dart';
import 'package:provider/provider.dart';
import 'package:job_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign In user

  Future<void> signIn() async {
    // get the auth service
    final authService = Provider.of<AuthServices>(context, listen: false);
    try {
      await authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(
                //   height: 50,
                // ),
                // logo
                // Icon(
                //   Icons.work,
                //   shadows: const [
                //     Shadow(color: Colors.black, blurRadius: 20.0),
                //   ],
                //   size: 100,
                //   color: Colors.yellow.shade800,
                // ),

                // illustration
                image(),

                const SizedBox(
                  height: 20,
                ),

                // welcome back message
                // const Text(
                //   "WELCOME BACK",
                //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),

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

                // sign in button
                MyButton(onTap: signIn, text: "Sign In"),

                const SizedBox(
                  height: 20,
                ),
                // not a member ? register now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register Now',
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

  Widget image() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/login.png'), fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}
