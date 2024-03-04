// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:lava/constatnt.dart';
import 'package:lava/view/widget/custom_backIcon_widget.dart';
import 'package:lava/view/widget/custom_chat_Bubble.dart';
import 'package:lava/view/widget/custom_textfield.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: BackIcon(),
        title: Text(
          'chat',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ChatBuble();
              }),
            ),
            // ChatBuble(),
            // ChatBubleForClient(),
            CustomTextField(
              hintText: 'Type a Message here...',
              inputType: TextInputType.text,
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width: 0,
                    height: 0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.send,
                        color: kWhiteColor,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
