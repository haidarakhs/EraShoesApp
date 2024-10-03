import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    // List kategori
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];

    // Menggunakan Row untuk menampilkan kategori dalam baris
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: categories.map((category) {
          return categoryCard(
            icon: category["icon"],
            text: category["text"],
            press: () {
            
            },
          );
        }).toList(),
      ),
    );
  }
}

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropScreenWidth(55),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(getPropScreenWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset(icon), // Menggunakan icon parameter
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text, 
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
