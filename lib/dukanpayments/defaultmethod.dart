import 'package:flutter/material.dart';

class DefaultMethod extends StatelessWidget {
  final method;
  final bankaccount;
  final arrow;

  DefaultMethod(
      {Key? key, required this.method, required this.bankaccount,this.arrow=Icons.arrow_forward_ios,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 5,color: Colors.grey)) ),
      child: ListTile(
        
        contentPadding: EdgeInsets.only(bottom: .5),
        leading: Text(method,style: TextStyle(fontSize: 17),),
        trailing: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Text(bankaccount,style: TextStyle(fontSize: 15),),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(arrow),
            )
          ],
        ),
      ),
    );
  }
}
