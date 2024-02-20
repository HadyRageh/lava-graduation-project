// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:lava/widgets/custom_backIcon_widget.dart';
import 'package:lava/widgets/custom_circle_avatar.dart';
import 'package:lava/widgets/custom_personal_widgets.dart';

class PersonalIngoPage extends StatelessWidget {
  const PersonalIngoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Info',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
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
