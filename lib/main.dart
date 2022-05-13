import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_2/bottom_nav.dart';
import 'package:ui_design_2/Managestore/store.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
  }
}