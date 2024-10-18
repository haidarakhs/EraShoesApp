import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/home/components/categories.dart';
import 'package:ui_ecommerce/screens/home/components/discount_banner.dart';
import 'package:ui_ecommerce/screens/home/components/home_header.dart';
import 'package:ui_ecommerce/screens/home/components/popular_product.dart';
import 'package:ui_ecommerce/screens/home/components/section_title.dart';
import 'package:ui_ecommerce/screens/home/components/special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 20),
            DiscountBanner(),
            SizedBox(height: 20),
            Categories(),
            SizedBox(height: 20),
            SectionTitle(
              text: "Special For You",
              press: () {},
              title: '', // Consider removing this line if the title is not needed
            ),
            SizedBox(height: 20), // Jarak setelah SectionTitle
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialOfferCard(
                    image: "assets/images/Image_Banner_2.png",
                    press: () {},
                  ),
                  SizedBox(width: 20),
                  SpecialOfferCard(
                    image: "assets/images/Image_Banner_3.png",
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.image,
    required this.press,
  });

  final String image; // Image path for the card
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Displaying the image
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity, // Ensures image covers the card width
                  height: double.infinity, // Ensures image covers the card height
                ),
                // Gradient overlay
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                // Additional content can be added here if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
