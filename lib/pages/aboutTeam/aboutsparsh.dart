import 'package:flutter/material.dart';
import 'package:uipracticeapp4/components/aboutTeamtemplate.dart';

class Startsparsh extends StatelessWidget {
  const Startsparsh({super.key});

  @override
  Widget build(BuildContext context) {
    // all variables here
    String imageaddress = 'lib/assets/images/sparsh.jpg';
    String name = 'Sparsh';
    String role = 'Flutter Developer';
    String description =
        'Sparsh is a Flutter Developer at UI Practice App 4. He is a passionate developer and loves to code.';
    String email = 'mailto:';
    String phone = 'tel:';
    String link = '';

    return Scaffold(
      body: aboutTeamTemplate(
          context, imageaddress, name, role, description, email, phone, link),
    );
  }
}
