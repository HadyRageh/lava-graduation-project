// ignore_for_file: prefer_const_constructor, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/widgets/read_more_and_less_widget.dart';

class AboutCarWashPage extends StatefulWidget {
  const AboutCarWashPage({super.key});

  @override
  State<AboutCarWashPage> createState() => _ActionBookingPageState();
}

class _ActionBookingPageState extends State<AboutCarWashPage> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return SizedBox(
                      width: constraints.maxWidth,
                      child: Image.asset(
                        'assets/images/Frame 34076 (1).png',
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                  // Positioned(top: 51, left: 24, child: BackIcon()),
                  Positioned(
                    top: 30,
                    left: 24,
                    child: GestureDetector(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kWhiteColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'dry car Wash',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ReadMoreAndLessWidget(
                        text:
                            'The car is cleaned effectively without the need to use extensive water or strong chemical products.'
                            'Dry car wash technology relies on the use of special high-quality products and innovative techniques to remove dirt and impurities from the surface of the car in a safe and effective way.'
                            'Instead of using water, special sprays are used that contain cleaning and polishing ingredients that loosen and lift dirt from the surface.'
                            'What distinguishes dry car washes is its effectiveness in cleaning the car and leaving it clean and shiny, while protecting the car\'s paint and preserving its quality and original color.',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Body Style',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
