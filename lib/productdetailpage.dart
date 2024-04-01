import 'package:flutter/material.dart';
import 'package:fmlms/constants/constants.dart';
import 'package:fmlms/model/products.dart';

class Productdetailpage extends StatelessWidget {
  const Productdetailpage({super.key});

  @override
  Widget build(BuildContext context) {
    Constants sconstants = Constants();
    var productdespage = sconstants.productlist;

    return Scaffold(
      body: Container(
          child: Stack(children: [
        Container(
          height: 812,
          width: 375,
          child: Stack(
            children: [
              SizedBox(
                  height: 370,
                  width: 375,
                  child: Image(
                    image: AssetImage("assets/images/cardimg3.jpg"),
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: 370,
                child: Container(
                  height: 442,
                  width: 375,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                            spreadRadius: 0.1,
                            offset: Offset(0.01, 0.01))
                      ],
                      color: const Color.fromARGB(255, 238, 238, 238),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                ),
              ),
              Positioned(
                top: 390,
                left: 23,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Mens Shirt",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "trex wearss",
                        style: TextStyle(
                            color: Color.fromARGB(144, 158, 158, 158),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top: 420,
              //   left: 23,
              //   child: Column(
              //     children: [

              //     ],
              //   ),
              // )
            ],
          ),
        )
      ])),
    );
  }
}
