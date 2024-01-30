// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

import 'package:lava/widgets/custom_row_in_Homepage.dart';
import 'package:lava/widgets/offer_card.dart';

class Home extends StatelessWidget {
  Home({super.key});
  PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CustomRowInHomePage(titleName: 'Special For You', onPressed: () {}),
            Container(
              width: double.infinity,
              height: 150,
              child: PageView(
                controller: _controller,
                children: [
                  OfferCards(
                    imageCard: 'assets/images/Frame 34033.png',
                    leftPadding: 0,
                    rightPadding: 10,
                    ontap: () {
                      // put your link to bookink page ;;
                    },
                  ),
                  OfferCards(
                    imageCard: 'assets/images/Frame 34033.png',
                    leftPadding: 10,
                    rightPadding: 10,
                    ontap: () {},
                  ),
                  OfferCards(
                    imageCard: 'assets/images/Frame 34033.png',
                    leftPadding: 10,
                    rightPadding: 10,
                    ontap: () {},
                  ),
                  OfferCards(
                    imageCard: 'assets/images/Frame 34033.png',
                    leftPadding: 10,
                    rightPadding: 10,
                    ontap: () {},
                  ),
                  OfferCards(
                    imageCard: 'assets/images/Frame 34033.png',
                    leftPadding: 10,
                    rightPadding: 0,
                    ontap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustomRowInHomePage(titleName: 'Special For You', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
