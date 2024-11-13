import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  final List<String> imgList = [
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
    "assets/images/b.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          color: Colors.white60,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Image.asset(
            height: 200,
            width: 200,
            imgList[index],
            fit: BoxFit.cover,
          ),
        );
      },
      options: CarouselOptions(
        height: 300.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
        },
        scrollPhysics: const BouncingScrollPhysics(),
      ),
    );
  }
}
