import 'package:flutter/material.dart';
import 'package:fmlms/constants/constants.dart';
import 'package:fmlms/model/categoriesproductimg.dart';
import 'package:fmlms/model/products.dart';
import 'package:fmlms/productdetailpage.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({super.key});

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {
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
        SizedBox(height: 20),
        Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: SizedBox(
              height: 200,
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Image(
                    image: AssetImage("assets/images/cardb1.jpg"),
                    fit: BoxFit.cover,
                    width: 367,
                  ),
                ),
                Positioned(
                    left: 16,
                    top: 26,
                    child: Text(
                      "50% OFF",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    left: 16,
                    top: 55,
                    child: Text(
                      "on everthing today",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w400),
                    )),
                Positioned(
                  left: 16,
                  top: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Get Now",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            )),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: catergorydisplayhomepage.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 250),
            itemBuilder: (context, index) {
              return __productcategories(
                  context, catergorydisplayhomepage[index]);
            },
          ),
        ),
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
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(231, 229, 229, 1),
            blurRadius: 8.0,
            spreadRadius: 1.0,
            offset: Offset(
              1.0,
              1.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: Image(
                image: AssetImage(catergorydisplayhomepage.cpimg),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Center(
              child: Text(
            "${catergorydisplayhomepage.cpname}",
            style: TextStyle(
                color: const Color.fromARGB(255, 92, 92, 92),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ))
        ],
      ),
    ),
  );
}
