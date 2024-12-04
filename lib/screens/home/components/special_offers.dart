import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/home/components/section_title.dart';
import 'package:ui_ecommerce/screens/home/components/special_offer_card.dart';
import 'package:ui_ecommerce/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key, required List<dynamic> filteredProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: const SectionTitle(title: "New Arrival"),
        ),
        SizedBox(height: getPropScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/banner spesial.jpeg",
                  category: "",
                  numOfBrands: "",
                  press: () {
                    // Navigator.pushNamed(context, DetailsScreen.routeName);
                  },
                ),
                SpecialOfferCard(
                  image: "assets/images/banner spesial 2.jpeg",
                  category: "",
                  numOfBrands: "",
                  press: () {
                    // Navigator.pushNamed(context, DetailsScreen.routeName);
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}