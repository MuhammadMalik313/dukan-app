import 'package:flutter/material.dart';

class Factory extends StatelessWidget {
  final contactbutton;
final contacttext;
final lastbutton;
   Factory({ Key? key,required this.contactbutton,required this.contacttext,this.lastbutton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:IconButton(onPressed: (){}, icon: Icon(contactbutton)),
      title:Text(contacttext,style: TextStyle(),) ,
      trailing:lastbutton ,
    );
      
  
  }
}