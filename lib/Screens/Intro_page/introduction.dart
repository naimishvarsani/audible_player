// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, unused_field, prefer_final_fields, use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:audible_player/Controller/intro_controller.dart';
import 'package:audible_player/Helper/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage extends StatelessWidget {
  IntroController _introController = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _introController.pageController.nextPage(
              duration: Duration(milliseconds: 800),
              curve: Curves.fastOutSlowIn);
        },
      ),
      body: PageView(
        onPageChanged: (value) {
          _introController.selectedIndex.value = value;
        },
        controller: _introController.pageController,
        children: [
          pageView(
            images: AppImage.imges + "Group 1.png",
            introText: "Enjoy Ad- Free Music Listening",
          ),
          pageView(
            images: AppImage.imges + "Group 2.png",
            introText: "Life is a Song, Love is the music",
          ),
          pageView(
            images: AppImage.imges + "Group 3.png",
            introText: "Music can Change the world",
          ),
        ],
      ),
    );
  }

  Widget pageView({images, introText}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Center(
            child: Container(
              color: AppColor.secondrylinear,
              child: Text(introText),
            ),
          )
        ],
      ),
    );
  }
}
