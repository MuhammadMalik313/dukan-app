import 'package:flutter/material.dart';

class DukanOrder extends StatelessWidget {
  const DukanOrder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(17),
            child:
            
             Container(
              
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 252, 252, 252),
                  border: Border.all(width: .1)),

              width: 400,
              height: 190,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                    // ignore: prefer_const_constructors
                    Text(
                      "Transaction Limit",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 75, 74, 74)),
                    ),
                    const Text(
                      'A free limit upto which you will  recieve \nthe online payments directly in your bank',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 156, 155, 155)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const LinearProgressIndicator(
                          value: 0.30,
                          minHeight: 6,
                          color: Colors.blue,
                          backgroundColor: Colors.grey,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "36,668 left out of ₹ 50,000",
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 141, 140, 140)),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Increase limit"))
                  ],
                ),
              ),
            ),
          );
  }
}


//payment coloured box code

Widget gridBox(Color containercolor, String amounttext, amount) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: containercolor),
      height: 90,
      width: 170,
      // color: containercolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 17, left: 10),
            child: Text(
              amounttext,
              style: const TextStyle(
                  color: Colors.white,
                  //  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              amount,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ));
}



//order and product detail


Widget productDetails(
    productimage, title1, title2, String trailingtext1, deposittext) {
  return Column(
    children: [
      ListTile(
        leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(productimage),
              fit: BoxFit.fill,
            ))),
        title: Text(
          'Order $title1',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(title2),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  trailingtext1,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      right: 2,
                      left: 40,
                    ),
                    // ignore: unnecessary_const
                    child: const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 12,
                    ),
                  ),
                  const Text("Successfull")
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 120),
        child: Text(
          deposittext,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        // ignore: unnecessary_const
        child: const Divider(
          thickness: 1,
        ),
      )
    ],
  );
}
