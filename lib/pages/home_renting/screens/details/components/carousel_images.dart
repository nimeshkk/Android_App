import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

  CarouselImages(this.imagesListUrl);

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          autoPlay: false,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          viewportFraction: 1.0, // Use 1.0 for full-width images
        ),
        items: widget.imagesListUrl.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Image.asset(imageUrl),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}


// if we got some errors end of the session, please double check the carousel_slider package  and inside methods

//1:05:00 before