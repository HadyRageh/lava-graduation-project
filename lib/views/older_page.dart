// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/views/car_wash.dart';

import 'package:lava/views/chat_page.dart';
import 'package:lava/views/empty_cart_page.dart';

import 'package:lava/view/home/home_page.dart';

class OlderPage extends StatefulWidget {
  const OlderPage({super.key});

  @override
  State<OlderPage> createState() => _HomePageState();
}

class _HomePageState extends State<OlderPage> {
  // int _selectedTab = 0;
  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    CarWashScreen(),
    ChatPage(),
    EmptyCartPage(),
  ];

  // _changeTab(int index) {
  //   setState(() {
  //     _selectedTab = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: _pages[_selectedTab],
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        //onTap: (index) => _changeTab(index),
        onTap: (index) {
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => pages[index]),
            );
          }
        },
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kBlackColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",

            //backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_car_wash_outlined),
            label: "Booking",
            //backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comments),
            label: "Chat",
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
            // backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
