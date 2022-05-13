import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final dukanicons;
  final containercolor;
  final icontext1;
  final icontext2;
  final visiblecontainer;

  Cards(
      {Key? key,
      required this.dukanicons,
      required this.containercolor,
      required this.icontext1,
      required this.icontext2,
      this.visiblecontainer = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  // height: 40,
                  // width: 50,
                  color: containercolor,
                  child: Icon(
                    
                    dukanicons,
                    
                    color: Colors.white,
                  ),
                ),
                Visibility(
                    visible: visiblecontainer,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.green),
                        child: Center(child: Text("NEW")),
                      
                        height: 20,
                        width: 45,
                      ),
                    ))
              ],
            ),
            Text(
              icontext1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              icontext2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
      )
    );
  }
}
