import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/iphone_1.png",
      "assets/images/iphone2.png",
      "assets/images/iphone3.png",
      "assets/images/iphone 4.png",
    ],
    colors: [
      const Color(0xFF4D4D4B),
      const Color(0xFFE0DDD6),
      const Color(0xFF4D5361),
      const Color(0xFF9C9994),
    ],
    title: "Iphone 15 Pro Max",
    price: 30.50,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/ipad1.png",
      "assets/images/ipad2.png",
      "assets/images/ipad3.png",
      "assets/images/ipad4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "13-inch iPad Pro M4",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/samsung1.png",
      "assets/images/samsung2.png",
      "assets/images/samsung3.png",
      "assets/images/samsung4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Samsung Galaxy Z Fold6 ",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/samsung z.png",
      "assets/images/samsung z2.png",
      "assets/images/samsung z3.png",
      "assets/images/samsung z4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Samsung Galaxy Z Flip6",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Jagoan Nya Fitur Canggih Nih ";
