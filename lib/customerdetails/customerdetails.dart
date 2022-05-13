import 'package:flutter/material.dart';

import 'package:ui_design_2/contact%20us/contactpage.dart';
import 'package:ui_design_2/customerdetails/refactor.dart';

class DukanCustomer extends StatelessWidget {
  const DukanCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text("Order #1688068"),
        ),
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(
            children: [
              const CustomerDetails(),
              seperater(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "1 ITEM",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Wrap(
                      spacing: 2,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 50),
                          child: Icon(
                            Icons.text_snippet_outlined,
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "RECEIPT",
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                    height: 1000,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        image: const DecorationImage(
                          image: AssetImage("dukanImage/dukan_image2.jpg"),
                        ))),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Explore|Men|Navy Blue",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "1piece \nsize: XL",
                      style: const TextStyle(fontSize: 20),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 161, 209, 231),
                            border: Border.all(color: Colors.blue)),
                        child: const Center(
                            child: const Text(
                          "1",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 58, 124, 179)),
                        )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "x ₹799",
                        style: const TextStyle(fontSize: 22),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 90),
                        child: Text(
                          "₹799",
                          style: TextStyle(fontSize: 22),
                        ),
                      )
                    ])
                  ],
                ),
              ),
              seperater(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText("Item Total", Colors.black),
                      textSeperator(),
                      normalText("Delivery", Colors.black),
                      textSeperator(),
                      boldText("Grand Total")
                    ],
                  ),
                  Column(
                    children: [
                      normalText("₹ 799", Colors.black),
                      textSeperator(),
                      normalText("FREE", Colors.green),
                      textSeperator(),
                      boldText("₹ 799")
                    ],
                  )
                ],
              ),
              seperater(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText("CUSTOMER DETAILS", Colors.grey),
                      textSeperator(),
                      boldText("Arun"),
                      normalText("+91-9947380272", Colors.grey)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          normalText("SHARE", Colors.blue),
                        ],
                      ),
                      textSeperator(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.blue,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 1, color: Colors.blue))),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              Icons.whatsapp,
                              color: Colors.green,
                              size: 43,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              textSeperator(),
              textSeperator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("Address"),
                      normalText(
                          "ID 1101,charteerd baverly\nhills,Subrahmanyapura PO",
                          Colors.black),
                      textSeperator(),
                    ],
                  ),
                ],
              ),
              textSeperator(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("City"),
                      textSeperator(),
                      normalText("Bangalore", Colors.black),
                      textSeperator(),
                      // textSeperator(),
                    ],
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("Pincode"),
                      textSeperator(),
                      normalText("560606", Colors.black),
                      textSeperator(),
                    ],
                  )
                ],
              ),
              textSeperator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("payment"),
                      textSeperator(),
                      normalText("Online", Colors.black),
                      textSeperator(),
                    ],
                  ),
                  Column(
                    children: [
                      textSeperator(),
                      textSeperator(),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "PAID",
                              style: TextStyle(color: Colors.green),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 173, 224, 199),
                                minimumSize: const Size(50, 30),
                                elevation: 0),
                          ))
                    ],
                  )
                ],
              ),
              seperater(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  normalText("ADDITIONAL INFORMATION", Colors.grey),
                  textSeperator(),
                  textSeperator(),
                  boldText("State"),
                  normalText("Karnataka", Colors.black),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textSeperator(),
                  boldText("Email"),
                  normalText("greeniceaqua@mail.com", Colors.black),
                ],
              ),
              textSeperator(),
              textSeperator(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      minimumSize: const Size(900, 50),
                      side: const BorderSide(color: Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactPage()),
                    );
                  },
                  child: const Text(
                    'Share reciept',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
