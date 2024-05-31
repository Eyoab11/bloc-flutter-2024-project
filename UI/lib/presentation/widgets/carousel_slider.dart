import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class MyCarouselSlider extends StatelessWidget {
  final List<String> images;
  final List<String> captions;

  MyCarouselSlider({
    required this.images,
    required this.captions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Make the container fill the width
      height: 300, // Increase the height to make the pictures larger
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            children: [
              Expanded(
                child: Image.asset(
                  images[index],
                  fit: BoxFit.fitWidth,
                  width: 450,
                ),
              ),
              SizedBox(height: 20),
              Text(
                captions[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          aspectRatio: 4 / 3,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
