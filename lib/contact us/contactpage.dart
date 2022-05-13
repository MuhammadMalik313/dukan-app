import 'package:flutter/material.dart';

import 'package:ui_design_2/contact%20us/refactory.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Additional Information")),
        body: ListView(
          children: [
            Factory(
              contactbutton: Icons.share,
              contacttext: "Share Dukan App",
              lastbutton: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            Factory(
              contactbutton: Icons.message,
              contacttext: "Change Language",
              lastbutton: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            Factory(
                contactbutton: Icons.whatsapp,
                contacttext: "Whatsapp Chat Support",
                lastbutton: Switch(
                  value: true,
                  onChanged: editButton(),
                  inactiveThumbColor: Colors.blue,
                  // inactiveTrackColor: Colors.blue[300],
                )),
            Factory(
              contactbutton: Icons.shopping_bag_outlined,
              contacttext: "privacy policy ",
            ),    Factory(
              contactbutton: Icons.star_border,
              contacttext: "Rate us",
            ),
            Factory(
              contactbutton: Icons.exit_to_app,
              contacttext: "SignOut",
            )
          ],
          
        ),
      ),
    );
  }
}

editButton() {}
