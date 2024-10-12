import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:monmatics/const/global_var.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      options: CarouselOptions(
        onPageChanged: (index, reason) {},
        height: 170,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIndex) => InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Container(
            width: appWidth(context) * 0.8,
            decoration: BoxDecoration(
              color: colorScheme(context).primary,
            ),
            child: Container(
              width: appWidth(context),
              height: appWidth(context) * 0.1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorScheme(context).secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
