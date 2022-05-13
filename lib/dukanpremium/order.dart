// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'refactor.dart';

class Order extends StatefulWidget {
  Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'PxqKgrykDac',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle:true,
        title: Text("Dukaan Premium"),
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(children: [

       DukanTitle(),

        dukanpremiumHeadings(premiumheading: "Features"),
        featuresOfDukan(Icons.language_rounded, "Custom domain name",
            "get your own custom domain and build \nyour brand on the internet"),
        featuresOfDukan(Icons.verified_outlined, "varified seller badge",
            "get green verified badge under your \nstore name and build trust"),
        featuresOfDukan(Icons.laptop_mac_sharp, "Dukaan for pc",
            "Access all the exclusive premium \nfeatures on dukaan for pc"),
        featuresOfDukan(Icons.headset_mic_outlined, "Priority support",
            "Get your questions resolved with our \npriority customer support"),
        // ignore: prefer_const_constructors
        Divider(
          thickness: 4,
        ),

        
        dukanpremiumHeadings(premiumheading: "What is dukan premium"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            // ignore: prefer_const_constructors
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
        ),
        // ignore: prefer_const_constructors
        Divider(
          thickness: 4,
        ),
        dukanpremiumHeadings(premiumheading: "frequently asked questions"),
        dukanAccordion(
            questiontitle: "What type of buisinness can use dukan \npremium",
            answercontent:
                "With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant.With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant."),
        dukanAccordion(
            questiontitle:
                "Will there be an automatic charge after the \npaid trial",
            answercontent:
                "With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant.With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant."),
        dukanAccordion(
            questiontitle: "What is your refund policy?",
            answercontent:
                "With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant.With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant."),
        dukanAccordion(
            questiontitle: "What happens when my free trial ends?",
            answercontent:
                "With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant.With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant."),
        dukanAccordion(
            questiontitle: "What are the terms for the custom domain",
            answercontent:
                "With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant.With Dukaan, get more customers to your business, by running an easy to use table booking service, for your restaurant."),
        dukanpremiumHeadings(premiumheading: "Need help? get in touch"),
        // ignore: prefer_const_constructors
        Divider(
          thickness: 4,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: iconContainer(
                  premiumicon: Icons.messenger_outline_outlined,
                  premiumtext: "Live Chat"),
            ),
            // SizedBox(width: 10,),
            iconContainer(
                premiumicon: Icons.local_phone_outlined,
                premiumtext: "Phone Call"),
          ],
        ),
        Divider(thickness: 4,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
            ElevatedButton(
            child: Text('select domain'),
            onPressed: () {
              
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) return Colors.blue;
                  return Colors.white;
                },
              ),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            
            ),
            ),
             ElevatedButton(
            child: Text('Get premium'),
            onPressed: () {
              
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) return Colors.blue;
                  return Colors.white;
                },
              ),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            
            ),
            )
          ],),
        )
      ]),
    );
  }
}







