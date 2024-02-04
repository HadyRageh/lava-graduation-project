// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/views/profile_page.dart';
import 'package:lava/widgets/custom_accessories_card.dart';
import 'package:lava/widgets/custom_car_card.dart';

import 'package:lava/widgets/custom_row_in_Homepage.dart';
import 'package:lava/widgets/offer_card.dart';
import 'package:lava/widgets/search_texr_field.dart';

class Home extends StatelessWidget {
  Home({super.key});
  PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return ProfilePage();
              })));
            },
            child: Image.asset('assets/images/Mask group.png')),
        title: SearchTextField(),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
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
              CustomRowInHomePage(
                  titleName: 'Special For You', onPressed: () {}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/Frame 34032.png',
                          width: 300,
                        )),
                    SizedBox(
                      width: 14,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/Frame 34033.png',
                        )),
                    SizedBox(
                      width: 14,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/Frame 34031.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomRowInHomePage(titleName: 'Services', onPressed: () {}),
              Image.asset('assets/images/SERVIES.png'),
              SizedBox(
                height: 5,
              ),
              CustomRowInHomePage(titleName: 'Cars', onPressed: () {}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: kWhiteColor,
                  child: Row(
                    children: [
                      CustomCarCard(),
                      SizedBox(
                        width: 30,
                      ),
                      CustomCarCard(),
                      SizedBox(
                        width: 30,
                      ),
                      CustomCarCard(),
                      SizedBox(
                        width: 30,
                      ),
                      CustomCarCard(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomRowInHomePage(titleName: 'Accessories', onPressed: () {}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: kWhiteColor,
                  child: Row(
                    children: [
                      CustomAccessoriesCard(),
                      SizedBox(
                        width: 30,
                      ),
                      CustomAccessoriesCard(),
                      SizedBox(
                        width: 30,
                      ),
                      CustomAccessoriesCard(),
                      SizedBox(
                        width: 30,
                      ),
                      CustomAccessoriesCard(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
