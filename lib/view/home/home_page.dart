// ignore_for_file: unnecessary_new, prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:lava/constatnt.dart';

import 'package:lava/view/widget/custom_text.dart';
import 'package:lava/views/car_wash.dart';
import 'package:lava/views/chat_page.dart';
import 'package:lava/views/empty_cart_page.dart';

import 'package:lava/views/profile_page.dart';
import 'package:lava/views/search_screen.dart';
import 'package:lava/widgets/custom_accessories_card.dart';
import 'package:lava/widgets/custom_car_card.dart';
import 'package:lava/widgets/custom_nav_bar.dart';
import 'package:lava/widgets/custom_row_in_Homepage.dart';
import 'package:lava/widgets/search_texr_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List names = [
    'hady',
    'mohamed',
    'wael',
    'abdo',
  ];

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
                //onTap: () {},
              ),
            ),
            Expanded(
              child: CustomNavBar(
                image: 'assets/images/icons8-chat-50 (1).png',
                labelName: 'Booking',
                onTap: () {
                  Get.to(CarWashScreen());
                },
              ),
            ),
            Expanded(
              child: CustomNavBar(
                onTap: () {
                  Get.to(ChatPage());
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
                  Get.to(EmptyCartPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  static List offers = [
    'assets/images/Frame 34032.png',
    'assets/images/Frame 34033.png',
    'assets/images/Frame 34031.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.to(ProfilePage());
            },
            child: Image.asset('assets/images/Mask group.png')),
        title: InkWell(
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
            child: SearchTextField(
              enabled: false,
            )),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    //   return ();
                    // })));
                  },
                  icon: Icon(
                    FontAwesomeIcons.bell,
                    size: 25,
                  )),
              Positioned(
                top: 12,
                right: 13,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kRedColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Special For You',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(CarWashScreen());
                    },
                    child: CustomText(
                      text: 'See More',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: offers.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              offers[index],
                              width: 300,
                            ),
                          ));
                    },
                  )),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: 'Services',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              CustomServises(),
              SizedBox(
                height: 5,
              ),
              CustomRowInHomePage(
                titleName: 'Cars',
                onPressed: () {},
                textButtonName: 'See More',
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      child: CustomCarCard(),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomRowInHomePage(
                titleName: 'Accessories',
                textButtonName: 'See More',
                onPressed: () {},
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      child: CustomAccessoriesCard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomServises extends StatelessWidget {
  const CustomServises({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/carwash.png',
              width: 100,
              height: 100,
            ),
            CustomText(
              text: 'Car Wash',
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/images/car1.jpeg',
              width: 100,
              height: 100,
            ),
            CustomText(
              text: 'Car ',
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/images/accessories.jpeg',
              width: 100,
              height: 100,
            ),
            CustomText(
              text: 'Accessories',
            ),
          ],
        ),
      ],
    );
  }
}
