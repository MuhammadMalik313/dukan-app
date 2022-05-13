import 'package:flutter/material.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

Widget cataloguePage(
    {required catalogueimage, required cataloguetitle, required price}) {
  return Padding(
    padding: const EdgeInsets.all(14),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 252, 252, 252),
          border: Border.all(width: .1)),
      width: 400,
      height: 185,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 100,
                width: 90,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Image.asset(
                      catalogueimage,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cataloguetitle,
                  style: TextStyle(fontSize: 18),
                ),
                Text("1 piece"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "In stock",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 7),
                  child: Icon(Icons.more_vert_outlined),
                ),
                SizedBox(
                  height: 20,
                ),
                Switch(
                  value: true,
                  onChanged: editButton(),
                  inactiveThumbColor: Colors.blue,
                  // inactiveTrackColor: Colors.blue[300],
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            thickness: 2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
            Text(
              "share product",
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ]),
    ),
  );
}

editButton() {}
