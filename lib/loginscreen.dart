import 'package:flutter/material.dart';
import 'package:fmlms/dashboard.dart';
import 'package:fmlms/forgetpass_screen.dart';
import 'package:fmlms/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailtextcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Positioned(
            top: 30,
            child: Image(
              image: AssetImage(
                  "assets/images/fashion-logo-design-removebg-preview.png"),
              height: 200,
              width: 200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: TextField(
                    controller: emailtextcont,
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: TextField(
                    controller: emailtextcont,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(27.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18)),
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => AppDashboard())));
                            },
                            child: Text("Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black))),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18)),
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignUpScreen())));
                          },
                          child: Text("Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          )),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPass_screen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text(
                          "Forget Pass",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
