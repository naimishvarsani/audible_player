// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:audible_player/Helper/utility.dart';

class Slide {
  String? image;

  Slide({this.image});
}

List<Slide> slidelist = [
  Slide(image: AppImage.imges + "image1.png"),
  Slide(image: AppImage.imges + "image2.png"),
  Slide(image: AppImage.imges + "image3.png"),
  Slide(image: AppImage.imges + "image4.png"),
  Slide(image: AppImage.imges + "image5.png"),
];
