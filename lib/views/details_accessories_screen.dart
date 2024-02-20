// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/views/details_car_screen.dart';

import 'package:lava/widgets/custom_botton.dart';
import 'package:lava/widgets/read_more_and_less_widget.dart';

class DetailsAcessoriesScreen extends StatefulWidget {
  const DetailsAcessoriesScreen({super.key});

  @override
  State<DetailsAcessoriesScreen> createState() =>
      _DetailsAcessoriesScreenState();
}

class _DetailsAcessoriesScreenState extends State<DetailsAcessoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 380,
                      decoration: BoxDecoration(
                        color: kWithOpsityGrey,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(
                                0, 5), // move the shadow below the container
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kWhiteColor,
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_back),
                                ),
                              ),
                            ),
                            Text(
                              'datails',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/images/icons8-share-50.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/Sparco_QRT-R_-_QRT-R_Black-removebg-preview 2.png',
                          // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 65,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  '12.000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'L.E',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          //NAME OF MODEL
                          'univals its refreshed 2021 model 3 ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ReadMoreAndLessWidget(
                          text:
                              'The car is cleaned effectively without the need to use extensive water or strong chemical products.'
                              'Dry car wash technology relies on the use of special high-quality products and innovative techniques to remove dirt and impurities from the surface of the car in a safe and effective way.'
                              'Instead of using water, special sprays are used that contain cleaning and polishing ingredients that loosen and lift dirt from the surface.'
                              'What distinguishes dry car washes is its effectiveness in cleaning the car and leaving it clean and shiny, while protecting the car\'s paint and preserving its quality and original color.',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ColotCategory(),
                        CustomReveiw(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          // color: kWhiteColor,
          surfaceTintColor: Colors.transparent,
          height: 70,
          child: CustomButton(
            buttomName: 'Add To Cart',
            onTap: () {},
          ),
        ));
  }
}
