import 'package:flutter/material.dart';
import 'package:ui_design_2/Managestore/cards.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 240, 240),
      appBar: AppBar(
        title: Center(child: Text("Manage Store")),
      ),
      body: Container(
        color: Color.fromARGB(255, 235, 235, 235),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: GridView(
            children: [
              Cards(dukanicons: Icons.campaign_outlined, containercolor: Colors.orange, icontext1: "Marketing", icontext2: "Designs"),
              Cards(dukanicons: Icons.currency_rupee, containercolor: Colors.green, icontext1: "Online", icontext2: "Payments"),
              Cards(dukanicons: Icons.brightness_low_outlined, containercolor: Colors.yellow, icontext1: "Discount", icontext2: "Coupens"),
              Cards(dukanicons: Icons.people_alt_sharp, containercolor: Colors.teal[300], icontext1: "My", icontext2: "Customer"),
              Cards(dukanicons: Icons.qr_code_sharp, containercolor: Colors.grey, icontext1: "Store QR ", icontext2: "Code"),
              Cards(dukanicons: Icons.content_copy_rounded, containercolor: Colors.purple, icontext1: "Extra  ", icontext2: "Charges"),
              Cards(dukanicons: Icons.format_align_left, containercolor: Color.fromARGB(255, 152, 86, 163), icontext1: "Order", icontext2: "Form",visiblecontainer: true,)
         
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 30 / 20),
          ),
        ),
      ),
    );
  }
}
