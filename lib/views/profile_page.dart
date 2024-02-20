// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/views/my_booking_page.dart';
import 'package:lava/views/personal_info_page.dart';

import 'package:lava/widgets/custom_circle_avatar.dart';
import 'package:lava/widgets/custom_listTile_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: GestureDetector(
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
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomCirvleAvatar(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Abdelrahman Osama',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'abdelrahman@gmail.com',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w300, color: kGreyColor),
            ),
            SizedBox(
              height: 30,
            ),
            CustomListTile(
              listTileName: 'Personal Info',
              leadingIcon: Icon(Icons.person_2_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return PersonalIngoPage();
                })));
              },
            ),
            CustomListTile(
              listTileName: 'My Booking',
              leadingIcon: Icon(Icons.calendar_month_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return MyBookingPage();
                })));
              },
            ),
            CustomListTile(
              listTileName: 'Privacy & Security',
              leadingIcon: Icon(Icons.privacy_tip_outlined),
              onTap: () {},
            ),
            CustomListTile(
              listTileName: 'Help Center',
              leadingIcon: Icon(Icons.help_center_outlined),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Log Out',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kRedColor),
              ),
              leading: Icon(
                Icons.logout,
                color: kRedColor,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
