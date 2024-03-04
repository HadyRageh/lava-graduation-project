// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/view/widget/custom_text.dart';

import 'package:lava/view/widget/custom_backIcon_widget.dart';
import 'package:lava/view/widget/custom_circle_avatar.dart';

class PersonalIngoPage extends StatelessWidget {
  const PersonalIngoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Info',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: BackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
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
              CustomPersonalInfoWidget(
                titleName: 'Name',
                headerName: 'Abdelrahman Osama',
                editName: 'Edit',
                onPressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              CustomPersonalInfoWidget(
                titleName: 'Phone Number',
                headerName: '01020877952',
                editName: '',
              ),
              SizedBox(
                height: 15,
              ),
              CustomPersonalInfoWidget(
                titleName: 'Email',
                headerName: 'abdelrahman@gmail.com',
                editName: 'Edit',
                onPressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              CustomPersonalInfoWidget(
                titleName: 'Password',
                headerName: '***********',
                editName: 'Show',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPersonalInfoWidget extends StatelessWidget {
  CustomPersonalInfoWidget(
      {super.key,
      this.titleName,
      this.headerName,
      this.onPressed,
      this.editName});
  String? titleName;
  String? headerName;
  String? editName;

  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CustomText(
            text: titleName!,
            fontSize: 20,
            color: kGreyColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: headerName!,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            TextButton(
              onPressed: onPressed,
              child: CustomText(
                text: editName!,
                fontSize: 18,
                color: kPrimaryColor,
                // fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
