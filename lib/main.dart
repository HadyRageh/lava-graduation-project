// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/views/car_wash.dart';
import 'package:lava/views/chat_page.dart';
import 'package:lava/views/empty_cart_page.dart';
import 'package:lava/views/home_page.dart';
import 'package:lava/views/get_started_page.dart';
import 'package:lava/views/older_page.dart';
import 'package:lava/views/payment_datails_page.dart';
import 'package:lava/views/profile_page.dart';
import 'package:lava/views/booking_page.dart';
import 'package:lava/views/register_page.dart';
import 'package:lava/views/store_page.dart';
import 'package:lava/views/successful_order_page.dart';
import 'package:lava/views/tracking_order_page.dart';
import 'package:lava/views/verivication_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lava',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: TrackingOrderPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
