import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/List/Categories_List.dart';

class CategoriesSlider extends StatefulWidget {
  const CategoriesSlider({super.key});

  @override
  State<CategoriesSlider> createState() => _CategoriesSliderState();
}

class _CategoriesSliderState extends State<CategoriesSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: Categories.keys.map((e) {
          // String imageUrl = e.key;
          // String title = e.value;
          return Builder(
            builder: (context) {
              return Column(
                children: [
                CircleAvatar(
                radius: 37,
                backgroundImage: AssetImage(e),

              ),
              SizedBox(height:10),
              Text(Categories[e]!, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),)
                ],
              );
            }
          );
        }).toList(),
        options: CarouselOptions(
          aspectRatio: 10,
            height: 300,
            viewportFraction: 0.25,
            autoPlay: true,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 4)));
  }
}
