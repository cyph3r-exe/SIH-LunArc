import 'package:flutter/material.dart';
import 'package:uipracticeapp4/pages/mainviewer.dart';

class StartLandingPage extends StatelessWidget {
  const StartLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/darkspace.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Image.asset('lib/assets/images/whitelogo.png'),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Mainviewer()));
                  },
                  child: const Text('Start Exploring',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'didot',
                  ),),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
