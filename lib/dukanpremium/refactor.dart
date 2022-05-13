import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class DukanTitle extends StatelessWidget {
  const DukanTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 130,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 320,
                height: 200,
                // color: Colors.red,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 24, 113, 185),
                            radius: 25,
                            child: const Icon(
                              Icons.local_mall,
                              color: Colors.white,
                              size: 37,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: const Text(
                                  "dukaan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "PREMIUM",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        "Get Dukaan Premium for just \n₹ 4999/year",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      "All the advanced features for scaling your \n business",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
  }
}
//features of dukan
Widget featuresOfDukan(featureicon, featuretitle, featuresubtitle) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(
            featureicon,
            color: Colors.blue,
            size: 30,
          ),
        ),
      ),
      title: Text(
        featuretitle,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      subtitle: Text(featuresubtitle),
    ),
  );
}

//dukan frequently asked questions

Widget dukanAccordion({required questiontitle, required answercontent}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GFAccordion(
      title: questiontitle,
      content: answercontent,
      expandedIcon: Icon(Icons.minimize),
      collapsedIcon: Icon(Icons.add),
    ),
  );
}

//dukan need help get in touch

Widget iconContainer({required premiumicon, required premiumtext}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      height: 100,
      width: 150,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
              child: Icon(
            premiumicon,
            size: 35,
          )),
        ),
        Text(
          premiumtext,
          style: TextStyle(fontSize: 20),
        )
      ]),
    ),
  );
}



Widget dukanpremiumHeadings({required String premiumheading}) {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Text(
      premiumheading,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}