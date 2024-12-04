import 'package:flutter/material.dart';
import 'package:ui_ecommerce/size_config.dart';

class BannerDiscountHome extends StatelessWidget {
  const BannerDiscountHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getPropScreenWidth(20),
        vertical: getPropScreenHeight(10),
      ),
      height: getPropScreenHeight(200), // Sesuaikan tinggi
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("assets/images/banner diskon.jpeg"),
          fit: BoxFit.cover, // Pastikan gambar mengisi container dengan proporsi yang baik
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(20),
          vertical: getPropScreenHeight(15),
        ),
        
      ),
    );
  }
}
