// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 70),
                      child: Text(
                        "MAY 31 ,5:42 PM",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Wrap(
                      spacing: 7,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                         padding: const EdgeInsets.only(top: 2),
                          child: Icon(
                            Icons.circle,
                            color: Colors.blue,
                            size: 14,
                          ),
                        ),
                        Text(
                          "Delivered",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    )
                  ],
                ),
              );
  }
}


  Widget seperater() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        thickness: 2,
      ),
    );
  }

  Widget boldText(boldedword) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        boldedword,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget normalText(normalword, normaltextcolor) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        normalword,
        style: TextStyle(fontSize: 19, color: normaltextcolor),
      ),
    );
  }

  Widget shadedText(shadedword) {
    return Text(shadedword);
  }

  Widget textSeperator() {
    return SizedBox(
      height: 10,
    );
  }
