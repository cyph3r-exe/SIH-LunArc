import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Mainviewer extends StatelessWidget {
  const Mainviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartMainViewer(),
      
    );
  }
}

class StartMainViewer extends StatefulWidget {
  const StartMainViewer({super.key});

  @override
  State<StartMainViewer> createState() => _StartMainViewerState();
}

class _StartMainViewerState extends State<StartMainViewer> {
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
          ModelViewer(
        src: 'lib/assets/3d/moonview.glb',
        alt: 'A 3D model of an astronaut',
        backgroundColor: Colors.white.withOpacity(0),
        ar: true,
        autoRotate: false,
        autoPlay: true,
        cameraControls: true,
      ),
        ],
      ),

    );
  }
}
