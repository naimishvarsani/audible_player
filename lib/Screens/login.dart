// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:audible_player/Helper/bottomnavbar.dart';
import 'package:audible_player/Helper/common_widget.dart';
import 'package:audible_player/Helper/utility.dart';
import 'package:audible_player/Screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(top: Get.height * 0.1),
        child: Column(
          children: [
            Container(
              height: Get.height * 0.25,
              width: Get.width * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImage.imges + "logo.png"),
                      fit: BoxFit.contain)),
            ),
            CommonWidget().textfieldBox(labletext: "Enter Email"),
            SizedBox(height: 20),
            CommonWidget().textfieldBox(labletext: "Enter Password"),
            Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(SignUpScreen());
              },
              child: RichText(
                text: TextSpan(
                  text: 'Create A new Account!  ',
                  style: TextStyle(
                    color: AppColor.boxcolor,
                    fontFamily: AppFont.regular,
                  ),
                  children: [
                    TextSpan(
                        text: 'Sign UP',
                        style: TextStyle(
                            fontFamily: AppFont.bold,
                            color: AppColor.primarylinear)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25, top: 15),
              child: CommonWidget().appButton(
                  ontap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return DashBoardView();
                      },
                    ));
                  },
                  btnheight: 50.0,
                  btnwidth: Get.width * 0.4,
                  btnsize: 15.0,
                  font: AppFont.semibold,
                  btnText: "Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
