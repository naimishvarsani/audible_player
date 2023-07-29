// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_interpolation_to_compose_strings

import 'dart:async';

import 'package:audible_player/Helper/utility.dart';
import 'package:audible_player/Screens/sign_up.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => SignUpScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: AppColor.bgcolor),
        child: Center(
            child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(AppImage.imges + 'logo.png'))),
      ),
    );
  }
}
