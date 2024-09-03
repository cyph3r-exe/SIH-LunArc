import 'package:flutter/material.dart';
import 'package:uipracticeapp4/pages/contactform.dart';

class StartHomePage extends StatelessWidget {
  const StartHomePage({super.key});


  
  @override
  Widget build(BuildContext context) {

    ontap() {
    Navigator.push(context, MaterialPageRoute(
                builder: (context) => const StartContactCard(),
              ),
            );
  }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 31, 56),
        //leading here
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),


        //more pages info here
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('About me', style: TextStyle(fontSize: 20)),
            ),
          ),
          InkWell(
            onTap: ontap(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Contact', style: TextStyle(fontSize: 20)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Projects', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],


      ),
      body: const HomePage(),
      backgroundColor: Colors.black,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'cyph3r.exe',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
