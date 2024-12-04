import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;

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
      "assets/images/nike 1.jpg",
      "assets/images/nike 2.jpg",
      "assets/images/nike 3.jpg",
      "assets/images/nike 4.jpg",
    ],
    colors: [
      Colors.black,
      const Color.fromARGB(255, 0, 104, 188),
      const Color.fromARGB(255, 182, 12, 0),
      Colors.white,
    ],
    title: "Kobe 9 Elite Low Protro",
    price: 64.99,
    description: "With every Protro, a new beginning arises. The Kobe 9 Elite Protro 'Halo' is a symbol of Kobe's dedication to always getting better—and it's our challenge to hoopers to push your game to new levels. ",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/jordan 2.jpg",
      "assets/images/jordan 3.jpg",
      "assets/images/jordan 4.jpg",
      "assets/images/jordan 5.jpg",
    ],
    colors: [
      Colors.black,
      const Color.fromARGB(255, 0, 63, 115),
      Colors.white,
    ],
    title: "Air Jordan 1 Low OG",
    price: 50.05,
    description: "We're bringing you a low-top version of the 2020 AJ1 High 'Mocha'. Made from premium materials, signature details and easy-to-style colours like black, Sail and Dark Mocha round off the iconic design. ",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/crocs 1.png",
       "assets/images/crocs 2.png",
        "assets/images/crocs 3.png",
        "assets/images/crocs 4.png",
    ],
    colors: [
      Colors.black,
      const Color.fromARGB(255, 134, 134, 134),
      Colors.white,
    ],
    title: "peppa pig classic toddler clog - multi",
    price: 36.55,
    description: "It has a Croslite™ foam outsole which can provide traction, extra support and more comfort. Waterproof and easy to clean Equipped with the iconic Crocs Comfort™ pivoting heel strap: Light, flexible and a sensation of absolute comfort",
    rating: 4.3,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/protro 1.jpg",
       "assets/images/protro 2.jpg",
        "assets/images/protro 3.jpg",
         "assets/images/protro 4.jpg",
    ],
    colors: [
      Colors.black,
      const Color.fromARGB(255, 18, 130, 221),
      Colors.white,
    ],
    title: "Kobe 9 Elite High Protro",
    price: 20.20,
    description: "With every Protro, a new beginning arises. The Kobe 9 Elite Protro 'Halo' is a symbol of Kobe's dedication to always getting better—and it's our challenge to hoopers to push your game to new levels.",
    rating: 4.6,
    isFavourite: true,
  ),
];

// const String description =
//     "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";