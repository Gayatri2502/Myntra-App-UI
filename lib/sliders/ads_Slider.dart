import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../List/Ads_List.dart';

class AdvertiseCarousel extends StatefulWidget {
  const AdvertiseCarousel({Key? key}) : super(key: key);

  @override
  State<AdvertiseCarousel> createState() => _AdvertiseCarouselState();
}

class _AdvertiseCarouselState extends State<AdvertiseCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: advertise_data.map((e) {
          return Image.asset(
            e,
            scale: 1,
            fit: BoxFit.fill,
          );
        }).toList(),
        options: CarouselOptions(
            height: 500,
            initialPage: 1,
            animateToClosest: true,
            viewportFraction: 0.8,
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 4)));
  }
}
