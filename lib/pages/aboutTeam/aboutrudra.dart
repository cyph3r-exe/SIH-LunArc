import 'package:flutter/material.dart';

class StartRudra extends StatelessWidget {
  const StartRudra({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Rudra(),
    );
  }
}

class Rudra extends StatefulWidget {
  const Rudra({super.key});

  @override
  State<Rudra> createState() => _RudraState();
}

class _RudraState extends State<Rudra> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: SingleChildScrollView(
        child: Column(),
      ),
    ));
  }
}
