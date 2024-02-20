// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

class CustomCarCard extends StatelessWidget {
  const CustomCarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width / 2,

      // padding: EdgeInsets.all(8),
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: kGreyColor.withOpacity(.9),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(6, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/Tesla_unveils_its_refreshed_2021_Model_3-removebg-preview 2.png',
              // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Container(
            // color: kWithOpsityGrey,
            color: kGreyColor.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Tesla',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'univals its refreshed 2021 model 3 ',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '\$ 74, 444',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
