// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/views/signIn_page.dart';
import 'package:lava/widgets/custom_get_started_pages.dart';
import 'package:lava/widgets/custom_skip&back_button.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutLavaPage extends StatefulWidget {
  const AboutLavaPage({super.key});

  @override
  State<AboutLavaPage> createState() => _AboutLavaPageState();
}

class _AboutLavaPageState extends State<AboutLavaPage> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            SmoothPageIndicator(
              controller: _controller, // PageController
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xff002E53),
                  dotColor: Color(0xffD1D1D6),
                  dotHeight: 4,
                  dotWidth: 17,
                  spacing: 15), // your preferred effect
            ),
            Center(
              child: SizedBox(
                height: 550,
                child: PageView(
                  controller: _controller,
                  children: [
                    Expanded(
                      child: CustomGetStartedPages(
                        title: 'About LAVA',
                        imageUrl: 'assets/images/Car wash-amico 1.png',
                        subTitle:
                            'LAVA is an application that combines car wash and car dealership services.               The application provides a unique user experience, as it can help you wash the car and purchase car tools easily through the application',
                      ),
                    ),
                    Expanded(
                      child: CustomGetStartedPages(
                        title: 'LAVA Services',
                        imageUrl:
                            'assets/images/undraw_mobile_feed_re_72ta 1.png',
                        subTitle:
                            'Enjoy Car Care at Your Fingertips!            Choose from the latest car wash techniques and explore the options to buy new cars and stylish accessories,all in our amazing app.',
                      ),
                    ),
                    Expanded(
                      child: CustomGetStartedPages(
                        title: 'Smart Booking',
                        imageUrl:
                            'assets/images/booking-removebg-preview 1.png',
                        subTitle:
                            'we have a smart booking system once you fill out your booking information, the system suggest the appropriate time to wash your car depending on the weather in your place',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSkipAndBackButtom(
                    icon: Icons.arrow_back_ios_new_rounded,
                    onTap: () {
                      Navigator.pop(context, true);
                    }),
                CustomSkipAndBackButtom(
                    icon: Icons.arrow_forward_ios_rounded,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}