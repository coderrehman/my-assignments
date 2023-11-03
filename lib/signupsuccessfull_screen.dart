import 'package:flutter/material.dart';

class Signup_successfull_screen extends StatelessWidget {
  const Signup_successfull_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : Scaffold(
        body:  Expanded(
          child: Text(
                    "Successfull",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  
         )
     ),
    
     
    );
    
      
      
  }
}
