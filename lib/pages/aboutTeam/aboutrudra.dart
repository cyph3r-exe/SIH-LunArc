import 'package:flutter/material.dart';
import 'package:uipracticeapp4/components/aboutTeamtemplate.dart';

class StartRudra extends StatelessWidget {
  const StartRudra({Key? key});

  @override
  Widget build(BuildContext context) {
    // all variables here
    String imageaddress = 'lib/assets/images/rudra.jpg';
    String name = 'Rudra';
    String role = 'Flutter Developer';
    String description =
        'Rudra is a Flutter Developer at UI Practice App 4. He is a passionate developer and loves to code.';
    String email = 'mailto:';
    String phone = 'tel:';
    String link = '';

    return Scaffold(
      body: aboutTeamTemplate(
          context, imageaddress, name, role, description, email, phone, link),
    );
  }
}
