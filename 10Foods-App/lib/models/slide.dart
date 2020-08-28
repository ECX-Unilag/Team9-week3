import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: "images/facemask.png",
    title: "Find foods you love",
    description: "Discover the best foods from 10Foods",
  ),
  Slide(
    imageUrl: "images/stay.jpg",
    title: "Fast Delivery",
    description:
        "Fast delivery from your home, office, and wherever you are",
  ),
  Slide(
    imageUrl: "images/wash.jpg",
    title: "Live Tracking",
    description: "Real Time Tracking of your food after ordered",
  )
];
