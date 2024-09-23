import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void handleLinkOrEmail(String url) async {
  if (url.startsWith('mailto:')) {
    // Handle email address
    await launchUrl(Uri.parse(url));
  } else {
    // Handle link
    await launchUrl(Uri.parse(url));
  }
}

Widget aboutTeamTemplate(BuildContext context, String imageaddress, String name,
    String role, String description, String email, String phone, String link) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/darkspace.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset(imageaddress),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () => handleLinkOrEmail('mailto:$email'),
                  ),
                  IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () {
                      //implement phone call
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.link),
                    onPressed: () => handleLinkOrEmail(link),
                  ),
                ],
              ),
            ],
          ),
        ),
      ))
    ],
  );
}
