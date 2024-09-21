import 'package:flutter/material.dart';

class Startsparsh extends StatelessWidget {
  const Startsparsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sparsh(),
    );
  }
}

class Sparsh extends StatefulWidget {
  const Sparsh({super.key});

  @override
  State<Sparsh> createState() => _SparshState();
}

class _SparshState extends State<Sparsh> {
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
