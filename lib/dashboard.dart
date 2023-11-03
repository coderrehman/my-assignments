import 'package:flutter/material.dart';
import 'package:fmlms/constants/constants.dart';
import 'package:fmlms/model/products.dart';
import 'package:fmlms/productdetailpage.dart';

class AppDashboard extends StatelessWidget {
  const AppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Products product;
    Constants constants = Constants();
    var productList = constants.productlist;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
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
        color: Color.fromARGB(255, 141, 141, 141),
        elevation: 5.0,
        shadowColor: Colors.grey.shade300,
        child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  "${productList.productimage}",
                  width: MediaQuery.of(context).size.width * 10,
                  height: 150,
                  alignment: Alignment.topCenter,
                ),
                Text(
                  "${productList.productname}",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "${productList.productprice}",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ))),
  );
}
