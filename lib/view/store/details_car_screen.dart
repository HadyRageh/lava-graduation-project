// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/constatnt.dart';

import 'package:lava/view/widget/custom_botton.dart';

import 'package:lava/view/widget/read_more_and_less_widget.dart';

class DetailsCarScreen extends StatelessWidget {
  const DetailsCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 380,
                      decoration: BoxDecoration(
                        color: kWithOpsityGrey,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(
                                0, 5), // move the shadow below the container
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
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
                            Text(
                              'datails',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/images/icons8-share-50.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/Tesla_unveils_its_refreshed_2021_Model_3-removebg-preview 2.png',
                          // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '\$ 37,990',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          //NAME OF MODEL
                          'univals its refreshed 2021 model 3 ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ReadMoreAndLessWidget(
                          text:
                              'The car is cleaned effectively without the need to use extensive water or strong chemical products.'
                              'Dry car wash technology relies on the use of special high-quality products and innovative techniques to remove dirt and impurities from the surface of the car in a safe and effective way.'
                              'Instead of using water, special sprays are used that contain cleaning and polishing ingredients that loosen and lift dirt from the surface.'
                              'What distinguishes dry car washes is its effectiveness in cleaning the car and leaving it clean and shiny, while protecting the car\'s paint and preserving its quality and original color.',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CategoryCarsDetails(),
                        ColotCategory(),
                        CustomReveiw(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          // color: kWhiteColor,
          surfaceTintColor: Colors.transparent,
          height: 70,
          child: CustomButton(
            buttomName: 'Buy',
            onTap: () {},
          ),
        ));
  }
}

class CategoryCarsDetails extends StatelessWidget {
  const CategoryCarsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: CustomContainerForCategoryCarsDetails(
            image: 'assets/images/icons8-engine-50.png',
            secText1: '1598',
            secText2: 'Cm3',
            thirdText: 'Engine',
          ),
        ),
        Expanded(
          child: CustomContainerForCategoryCarsDetails(
            image: 'assets/images/icons8-power-26.png',
            secText1: '116',
            thirdText: 'Power',
          ),
        ),
        Expanded(
          child: CustomContainerForCategoryCarsDetails(
            image: 'assets/images/icons8-speed-50.png',
            secText1: '117',
            thirdText: 'Speed',
          ),
        ),
        Expanded(
          child: CustomContainerForCategoryCarsDetails(
            image: 'assets/images/icons8-car-50.png',
            secText1: 'Sedan',
            thirdText: 'Tc',
          ),
        ),
      ],
    );
  }
}

class CustomContainerForCategoryCarsDetails extends StatelessWidget {
  CustomContainerForCategoryCarsDetails({
    super.key,
    required this.image,
    required this.secText1,
    this.secText2,
    required this.thirdText,
  });
  String image;
  String secText1;
  String? secText2;
  String thirdText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: kWithOpsityGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 30,
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: secText1,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    if (secText2 != null)
                      TextSpan(
                        text: secText2,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              ),
              Text(
                thirdText,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColotCategory extends StatelessWidget {
  const ColotCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: kWithOpsityGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kBlackColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kBlueDarkColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomReveiw extends StatelessWidget {
  const CustomReveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: kWithOpsityGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User Reviewes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '4.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: kGreyColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Based On 608 rating and 95 reviewes',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: kGreyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
