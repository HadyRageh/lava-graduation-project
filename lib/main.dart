// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lava/constatnt.dart';
import 'package:lava/helper/binding.dart';
import 'package:lava/view/auth/signIn_page.dart';
import 'package:lava/views/car_wash.dart';
import 'package:lava/views/chat_page.dart';
import 'package:lava/views/empty_cart_page.dart';
import 'package:lava/view/home/home_page.dart';
import 'package:lava/view/onboarding/get_started_page.dart';
import 'package:lava/views/older_page.dart';
import 'package:lava/view/home/payment_datails_page.dart';
import 'package:lava/views/profile_page.dart';
import 'package:lava/view/home/booking_page.dart';
import 'package:lava/view/auth/register_page.dart';
import 'package:lava/views/search_screen.dart';
import 'package:lava/views/store_page.dart';
import 'package:lava/views/successful_order_page.dart';
import 'package:lava/views/tracking_order_page.dart';
import 'package:lava/view/auth/verivication_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      title: 'Lava',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
