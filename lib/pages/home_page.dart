import 'package:flutter/material.dart';
import 'package:job_app/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // sign user out
  void signOut() {
    // get auth service
    final authService = Provider.of<AuthServices>(context, listen: false);

    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
        actions: [
          // sign out button
          IconButton(
            onPressed: signOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
