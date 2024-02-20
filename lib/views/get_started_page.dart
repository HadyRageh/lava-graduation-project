// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/views/onbording.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/logo1-removebg-preview 1.png'),
          SizedBox(
            height: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fast',
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                'Car Wash',
                style: TextStyle(
                    color: Color(0xff004269),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingPages()),
              );
            },
            child: Container(
              width: 240,
              height: 58,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get started ',
                    style: TextStyle(color: kWhiteColor, fontSize: 22),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: kWhiteColor,
                    size: 27,
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
