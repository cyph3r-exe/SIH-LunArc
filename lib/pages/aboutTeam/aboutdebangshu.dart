import 'package:flutter/material.dart';

class StartDebangshu extends StatelessWidget {
  const StartDebangshu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Debangshu(),
    );
  }
}

class Debangshu extends StatefulWidget {
  const Debangshu({super.key});

  @override
  State<Debangshu> createState() => _DebangshuState();
}

class _DebangshuState extends State<Debangshu> {
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
