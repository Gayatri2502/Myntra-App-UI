import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../List/Feature_Selection_List.dart';

class FeatureSlider extends StatefulWidget {
  const FeatureSlider({super.key});

  @override
  State<FeatureSlider> createState() => _FeatureSliderState();
}

class _FeatureSliderState extends State<FeatureSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: Features.map((e) {
          return Image.asset(
            e,
            scale: 1,
            fit: BoxFit.fill,
          );
        }).toList(),
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          height: 260,
          viewportFraction: 0.6,
        ));
  }
}
