import 'package:flutter/material.dart';
import 'package:fmlms/constants/constants.dart';
import 'package:fmlms/model/products.dart';
import 'package:fmlms/productdetailpage.dart';

class AppDashboard extends StatelessWidget {
  const AppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    var productList = constants.productlist;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 23),
                child: Container(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return getFeaturedProductCard(
                          context, productList[index]);
                    }),
              )
            ],
          ),
          Row(
            children: [Container()],
          )
        ],
      ),
    );
  }
}

getFeaturedProductCard(BuildContext context, productList) {
  return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Productdetailpage()));
      },
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Color.fromARGB(255, 255, 255, 255),
          elevation: 5.0,
          shadowColor: Colors.grey.shade300,
          child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("${productList.productimage}"),
                  width: double.infinity,
                  height: 150,
                ),
                Text(
                  "${productList.productname}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${productList.productprice}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )));
}
