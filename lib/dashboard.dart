import 'package:flutter/material.dart';
import 'package:fmlms/constants/constants.dart';
import 'package:fmlms/model/categoriesproductimg.dart';
import 'package:fmlms/model/products.dart';
import 'package:fmlms/productdetailpage.dart';

class AppDashboard extends StatelessWidget {
  const AppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();

    var productList = constants.productlist;
    var catergorydisplayhomepage = constants.catergorydisplayhomepage;
    return Scaffold(
      body: Column(children: [
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
                    return getFeaturedProductCard(context, productList[index]);
                  }),
            )
          ],
        ),
        SizedBox(
          height: 200,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 300,
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: catergorydisplayhomepage.length,
                itemBuilder: (context, index) {
                  return __productcategories(
                      context, catergorydisplayhomepage[index]);
                }),
          ),
        )
      ]),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image(
                    image: AssetImage("${productList.productimage}"),
                  ),
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

__productcategories(BuildContext context, catergorydisplayhomepage) {
  return SizedBox(
    height: MediaQuery.of(context).size.width * 0.7,
    width: MediaQuery.of(context).size.width * 0.4,
    child: Card(
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 5.0,
      shadowColor: const Color.fromARGB(255, 87, 87, 87),
      child: Column(
        children: [
          SizedBox(
            child: ListView(
              children: [
                Image(
                  image: AssetImage("${catergorydisplayhomepage.cpimg}"),
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Text("${catergorydisplayhomepage.cpname}")
        ],
      ),
    ),
  );
}
