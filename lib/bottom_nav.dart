import 'package:flutter/material.dart';
import 'package:ui_design_2/customerdetails/customerdetails.dart';
import 'package:ui_design_2/dukanpremium/order.dart';
import 'package:ui_design_2/dukanpayments/payments.dart';
import 'package:ui_design_2/catalogue/catalogue.dart';
import 'package:ui_design_2/Managestore/store.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentselectedindex = 0;
  final _pages = [
    Order(),
    const Payments(),
    DukanCatalogue(),
    ScreenHome(),
    const DukanCustomer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentselectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentselectedindex,
          onTap: (newindex) {
            setState(() {
              _currentselectedindex = newindex;
            });
          },
          selectedItemColor: Colors.blue,
          selectedLabelStyle: const TextStyle(color: Colors.grey),
          showUnselectedLabels: false,
          selectedIconTheme: const IconThemeData(
              color: const Color.fromARGB(255, 68, 145, 209)),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "order"),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.grid_view), label: "product"),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.layers), label: "manage"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_sharp), label: "Account"),
          ]),
    );
  }
}
