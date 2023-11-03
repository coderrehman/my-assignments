import 'package:fmlms/onboard.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoonboard();
  }

  _navigatetoonboard() async {
    await Future.delayed(Duration(milliseconds: 1000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/splashscreenimage.jpg'),
          Positioned(
              top: 300,
              left: 30,
              child: Image(image: AssetImage('assets/images/image1.png')))
        ],
      ),
      
    );

    
  }
}
