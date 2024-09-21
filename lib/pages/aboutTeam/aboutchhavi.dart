import 'package:flutter/material.dart';

class StartChhavi extends StatelessWidget {
  const StartChhavi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chhavi(),
    );
  }
}

class Chhavi extends StatefulWidget {
  const Chhavi({super.key});

  @override
  State<Chhavi> createState() => _ChhaviState();
}

class _ChhaviState extends State<Chhavi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(child: SingleChildScrollView(child: Column())));
  }
}
