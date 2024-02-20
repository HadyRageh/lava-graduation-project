// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:lava/constatnt.dart';
import 'package:lava/views/chat_page.dart';
import 'package:lava/views/empty_cart_page.dart';
import 'package:lava/views/home.dart';
import 'package:lava/widgets/custom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      bottomNavigationBar: BottomAppBar(
        color: kWithOpsityGrey,
        surfaceTintColor: kWithOpsityGrey,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CustomNavBar(
                image: 'assets/images/icons8-home-48.png',
                labelName: 'Home',
                onTap: () {},
              ),
            ),
            Expanded(
              child: CustomNavBar(
                image: 'lib/views/icons8-car-cleaning-50.png',
                labelName: 'Booking',
                onTap: () {},
              ),
            ),
            Expanded(
              child: CustomNavBar(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return ChatPage();
                  })));
                },
                image: 'assets/images/icons8-chat-50 (1).png',
                labelName: 'Chat',
              ),
            ),
            Expanded(
              child: CustomNavBar(
                image: 'assets/images/icons8-cart-64.png',
                labelName: 'Cart',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return EmptyCartPage();
                  })));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
