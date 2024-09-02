import 'package:flutter/material.dart';

class StartHomePage extends StatelessWidget {
  const StartHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 31, 56),
      ),
      body: const HomePage(),
      backgroundColor: Colors.black,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Welcome to the World of Cyph3r',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}