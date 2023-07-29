// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audible_player/Helper/utility.dart';
import 'package:audible_player/Model/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      drawer: appDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Dashboard",
            style: TextStyle(fontSize: 30, fontFamily: AppFont.bold)),
      ),
      backgroundColor: AppColor.bgcolor,
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              sliderPanel(),
            ],
          ),
        ),
      ),
    );
  }

  Widget sliderPanel() {
    return FlutterCarousel(
        items: List.generate(slidelist.length, (index) {
          return Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(slidelist[index].image.toString()),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.darken)),
                borderRadius: BorderRadius.circular(25),
                backgroundBlendMode: BlendMode.dstIn,
                gradient: LinearGradient(
                    colors: [AppColor.primarylinear, AppColor.secondrylinear])),
          );
        }),
        options: CarouselOptions(
            aspectRatio: 10 / 5,
            viewportFraction: 0.85,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.easeInCubic,
            enlargeCenterPage: false,
            controller: CarouselController(),
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            pauseAutoPlayOnTouch: true,
            pauseAutoPlayOnManualNavigate: true,
            pauseAutoPlayInFiniteScroll: false,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            disableCenter: false,
            showIndicator: false));
  }

  Drawer appDrawer() {
    return Drawer(
      backgroundColor: AppColor.bgcolor,
      child: Column(
        children: [
          Container(
            height: 180,
            color: AppColor.boxcolor.withOpacity(0.1),
            child: Center(
                child: Text(
              "AUDIBLE PLAYER",
              style: TextStyle(
                  color: AppColor.whitecolor,
                  fontSize: 30,
                  fontFamily: AppFont.bold),
            )),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppColor.whitecolor,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  color: AppColor.whitecolor,
                  fontSize: 18,
                  fontFamily: AppFont.semibold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.playlist_play,
              color: AppColor.whitecolor,
            ),
            title: Text(
              "Playist",
              style: TextStyle(
                  color: AppColor.whitecolor,
                  fontSize: 18,
                  fontFamily: AppFont.semibold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: AppColor.whitecolor,
            ),
            title: Text(
              "Setting",
              style: TextStyle(
                  color: AppColor.whitecolor,
                  fontSize: 18,
                  fontFamily: AppFont.semibold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.policy,
              color: AppColor.whitecolor,
            ),
            title: Text(
              "Privarcy & Policy",
              style: TextStyle(
                  color: AppColor.whitecolor,
                  fontSize: 18,
                  fontFamily: AppFont.semibold),
            ),
          ),
          Spacer(),
          Text(
            "Version 1.0.0",
            style: TextStyle(
                color: AppColor.whitecolor,
                fontSize: 12,
                fontFamily: AppFont.medium),
          ),
        ],
      ),
    );
  }
}
