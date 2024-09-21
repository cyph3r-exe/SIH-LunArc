import 'package:flutter/material.dart';

class StartSneha extends StatelessWidget {
  const StartSneha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sneha(),
    );
  }
}

class Sneha extends StatefulWidget {
  const Sneha({super.key});

  @override
  State<Sneha> createState() => _SnehaState();
}

class _SnehaState extends State<Sneha> {
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
