import 'package:flutter/material.dart';
import 'package:uipracticeapp4/pages/landingpage.dart';
import 'package:uipracticeapp4/pages/mainviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hydra Corps',
      // home: Mainviewer(),
      home: StartLandingPage(),
    );
  }
}