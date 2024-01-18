import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/List/Brands_List.dart';

class BrandsSlider extends StatefulWidget {
  const BrandsSlider({super.key});

  @override
  State<BrandsSlider> createState() => _BrandsSliderState();
}

class _BrandsSliderState extends State<BrandsSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: Brands.map((e) {
          return Image.asset(
            e,
            scale: 1.5,
            fit: BoxFit.fill,
          );
        }).toList(),
        options: CarouselOptions(
            height: 150,
            initialPage: 1,
            animateToClosest: true,
            viewportFraction: 0.8,
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 4)));
  }
}
