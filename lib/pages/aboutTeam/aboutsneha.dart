import 'package:flutter/material.dart';
import 'package:uipracticeapp4/components/aboutTeamtemplate.dart';

class StartSneha extends StatelessWidget {
  const StartSneha({super.key});

  @override
  Widget build(BuildContext context) {
    // all variables here
    String imageaddress = 'lib/assets/images/sneha.jpg';
    String name = 'Sneha';
    String role = 'Flutter Developer';
    String description =
        'Sneha is a Flutter Developer at UI Practice App 4. She is a passionate developer and loves to code.';
    String email = 'mailto:';
    String phone = 'tel:';
    String link = '';

    return Scaffold(
      body: aboutTeamTemplate(
          context, imageaddress, name, role, description, email, phone, link),
    );
  }
}
