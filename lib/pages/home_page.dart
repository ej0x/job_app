import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Hello World",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
