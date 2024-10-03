import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/home%20/components/categories.dart';
import 'package:ui_ecommerce/screens/home%20/components/discount_banner.dart';
import 'package:ui_ecommerce/screens/home%20/components/home_header.dart';
import 'package:ui_ecommerce/screens/home%20/components/popular_products.dart';
import 'package:ui_ecommerce/screens/home%20/components/section_title.dart';
import 'package:ui_ecommerce/screens/home%20/components/special_offer.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            DiscountBanner(),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            Categories(),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            SectionTitle(
              text: "Special For You",
              press: () {},
            ),
            SizedBox(
              height: getPropScreenHeight(20), // Jarak setelah SectionTitle
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialOfferCard(
                    category: "Smartphones",
                    image: "assets/images/Image Banner 2.png",
                    numOfBrands: 24,
                    press: () {},
                  ),
                  SizedBox(width: getPropScreenWidth(20)),
                  SpecialOfferCard(
                    category: "Laptops",
                    image: "assets/images/Image Banner 3.png",
                    numOfBrands: 16,
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(30),
            ),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}
