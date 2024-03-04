// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/view/profile/my_booking_page.dart';
import 'package:lava/view/profile/personal_info_page.dart';
import 'package:lava/view/widget/custom_text.dart';
import 'package:lava/view/widget/custom_backIcon_widget.dart';

import 'package:lava/view/widget/custom_circle_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: BackIcon(),
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
            CustomText(
              text: 'Abdelrahman Osama',
              alignment: Alignment.center,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'abdelrahman@gmail.com',
              alignment: Alignment.center,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: kGreyColor,
            ),
            SizedBox(
              height: 30,
            ),
            CustomListTile(
              listTileName: 'Personal Info',
              leadingIcon: Icon(Icons.person_2_outlined),
              onTap: () {
                Get.to(PersonalIngoPage());
              },
            ),
            CustomListTile(
              listTileName: 'My Booking',
              leadingIcon: Icon(Icons.calendar_month_outlined),
              onTap: () {
                Get.to(MyBookingPage());
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

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
      required this.listTileName,
      required this.onTap,
      required this.leadingIcon});

  String listTileName;
  Function() onTap;
  Widget leadingIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            listTileName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          leading: leadingIcon,
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: onTap,
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          color: kGreyColor,
          endIndent: 30,
          indent: 30,
          height: 2,
        ),
      ],
    );
  }
}
