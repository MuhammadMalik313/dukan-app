import 'package:flutter/material.dart';

import 'package:ui_design_2/dukanpayments/defaultmethod.dart';
import 'package:ui_design_2/dukanpayments/paymentbutton.dart';
import 'package:ui_design_2/dukanpayments/refactor.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle:true,
        title: Text("Payments"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))],
      ),
      body: ListView(
        children:
        
         [
           DukanOrder(),
          
         
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: DefaultMethod(
                method: "Dafaut method", bankaccount: "Online payments"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: DefaultMethod(
              method: "Payment profile",
              bankaccount: "Bank account",
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: DefaultMethod(
              method: "Payments overview",
              bankaccount: "Life Time",
              arrow: Icons.expand_more,
            ),
          ),
          Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PaymentButtons(
                      text: "On Hold",
                      bgColor: Color.fromARGB(255, 226, 225, 225),
                      fgColor: Colors.grey,
                      size: 88,
                    ),
                    PaymentButtons(
                      text: "Payouts (15)",
                      bgColor: Colors.blue,
                      fgColor: Colors.white,
                      size: 130,
                    ),
                    PaymentButtons(
                      text: "Refunds",
                      bgColor: Color.fromARGB(255, 226, 225, 225),
                      fgColor: Colors.grey,
                      size: 88,
                    ),
                  ],
                ),
              ),






          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              gridBox(Colors.orange, "AMOUNT ON HOLD", " ₹ 0"),
              gridBox(Colors.green, "AMOUNT RECIEVED", "₹ 13,332"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Text(
                "Transactions",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
          ),
          productDetails("dukanImage/dukan_image1.jpg", "#6389203",
              "JULY 12,2:06 PM", "₹ 376", "₹ 376 Deposited for 7465009887"),
          productDetails("dukanImage/dukan_image2.jpg", "#73892",
              "MAR 12,2:06 PM", "₹ 1125", "₹ 376 Deposited for 2558858685"),
          productDetails("dukanImage/dukan_image 3.jpg", "#534759",
              "APRIL 12,2:06 PM", "₹ 775", "₹ 376 Deposited for 425875855"),
          productDetails("dukanImage/dukan_image1.jpg", "#52487",
              "JULY 12,2:06 PM", "₹ 550", "₹ 376 Deposited for 755122155"),
          productDetails("dukanImage/dukan_image4 - Copy.jpg", "#63803",
              "AUG 12,2:06 PM", "₹ 2000", "₹ 376 Deposited for 526985855"),
          productDetails("dukanImage/dukan_image5.jpg", "#585458",
              "FEB 12,2:06 PM", "₹ 2253", "₹ 376 Deposited for 7465009887"),
          productDetails("dukanImage/dukan_image6.jpg", "#45562503",
              "FEB 12,2:06 PM", "₹ 500", "₹ 376 Deposited for 7465009887"),
          productDetails("dukanImage/dukan_image7.jpg", "#54850",
              "JAN 12,2:06 PM", "₹ 1150", "₹ 376 Deposited for 254125896"),
          productDetails("dukanImage/dukan_image8.jpg", "#524856",
              "OCT  12,2:06 PM", "₹ 175.0", "₹ 376 Deposited for 123456987"),
          productDetails("dukanImage/dukan_image1.jpg", "#52487",
              "JULY 12,2:06 PM", "₹ 550", "₹ 376 Deposited for 755122155"),
          productDetails("dukanImage/dukan_image2.jpg", "#73892",
              "MAR 12,2:06 PM", "₹ 1125", "₹ 376 Deposited for 2558858685"),
        ],
      ),
    );
  }
}

