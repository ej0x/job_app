import 'package:flutter/material.dart';
import 'package:job_app/firebase_options.dart';
import 'package:job_app/pages/login_page.dart';
import 'package:job_app/pages/register_page.dart';
import 'package:job_app/services/auth/auth_gate.dart';
import 'package:job_app/services/auth/login_or_register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
