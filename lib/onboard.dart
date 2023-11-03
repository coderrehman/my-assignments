import 'package:flutter/material.dart';
import 'package:fmlms/loginscreen.dart';
import 'package:fmlms/signupscreen.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Image.asset('assets/images/splashscreenimage.jpg'),
              Positioned(
                  top: 300,
                  left: 30,
                  child: Image(image: AssetImage('assets/images/image1.png'))),
              Container(
                child: Positioned(
                  top: 640,
                  left: 40,
                  child: SizedBox(
                    height: 35,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Positioned(
                  top: 688,
                  left: 40,
                  child: SizedBox(
                    height: 35,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Center(
                          child: Text(
                        "Signup",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
