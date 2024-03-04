// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomBottonSocialMedia extends StatelessWidget {
  const CustomBottonSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1.3,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Text('     Or Sign In With     '),
            Container(
              height: 1.3,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/logo google.jpeg',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/logo facebook.jpeg',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
