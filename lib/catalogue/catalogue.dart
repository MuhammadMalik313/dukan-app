import 'package:flutter/material.dart';
import 'package:ui_design_2/catalogue/refactor.dart';

class DukanCatalogue extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Products'),
    const Tab(text: 'categories'),
  ];

  DukanCatalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        appBar: AppBar(
          centerTitle:true,
          
          actions: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search,size: 35,),
            )
          ],
          title: const Text("Catalogue"),
          bottom: TabBar(
            labelStyle: const TextStyle(fontSize: 20),
            indicatorColor: Colors.blue,
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map(
            ( tab) {
            final String label = tab.text!;
            return ListView(children: [
              cataloguePage(
                  catalogueimage: "dukanImage/dukan_image7.jpg",
                  cataloguetitle: "Levis shirt",
                  price: "₹ 799"),
              cataloguePage(
                  catalogueimage: "dukanImage/dukan_image 3.jpg",
                  cataloguetitle: "Deep Blue shirt",
                  price: "₹ 399"),
              cataloguePage(
                  catalogueimage: "dukanImage/product3dukan.jpg",
                  cataloguetitle: "Electronics",
                  price: "₹ 1999"),
              cataloguePage(
                  catalogueimage: "dukanImage/product4dukan.jpg",
                  cataloguetitle: "Facewash",
                  price: "₹ 599"),
              cataloguePage(
                  catalogueimage: "dukanImage/product5dukan.jpg",
                  cataloguetitle: "Makeup Box",
                  price: "₹ 799"),
              cataloguePage(
                  catalogueimage: "dukanImage/product6dukan.jpg",
                  cataloguetitle: "Baby products",
                  price: "₹ 999"),
              cataloguePage(
                  catalogueimage: "dukanImage/product7dukan.jpg",
                  cataloguetitle: "Combo Cosmetics",
                  price: "₹ 299"),
              cataloguePage(
                  catalogueimage: "dukanImage/product8dukan.jpg",
                  cataloguetitle: "Floor Cleaner",
                  price: "₹ 199"),
              // cataloguePage(catalogueimage: "dukanImage/product1dukan.jpg",cataloguetitle: "Couch potato|wom..",price: "₹ 799"),
            ]);
          },
          ).toList(),
        ),
      ),
    );
  }
}
