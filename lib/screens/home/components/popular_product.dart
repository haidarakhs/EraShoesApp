import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/product_card.dart';
import 'package:ui_ecommerce/model/Product.dart';
import 'package:ui_ecommerce/screens/details/details_screen.dart';
import 'package:ui_ecommerce/size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  static String routeName = "/popular_product";
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}, text: '',),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  demoProducts.length, 
                  (index) {
                    final Product product = demoProducts[index];
                    return ProductCard(
                      product: demoProducts[index], 
                      press: () => Navigator.pushNamed(
                        context, DetailScreen.routeName, 
                        arguments: product
                        ,
                      ),
                    );
                  }
                ),
              ),
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  final List<String> iconUrls = [
    "https://storage.googleapis.com/a1aa/image/PIgmPlFe7r16bqBS0vxqP85HexFd2kVsHc3W7gO8yydRURnTA.jpg",
    "https://storage.googleapis.com/a1aa/image/jG9GwVCvx3o4FpjKTSFmwHWPUn1tg66OZIWE77pTEakDV05E.jpg",
    "https://storage.googleapis.com/a1aa/image/3OMfNsNolpWUYKclRsimiLuPne4QMkJUUuAhuayF8wTSURnTA.jpg",
    "https://storage.googleapis.com/a1aa/image/emXB42ERAkXpHq5VDKUfaclhfZf7SkuNF7UO9fTLWO5eEV05E.jpg",
    "https://storage.googleapis.com/a1aa/image/BMUm0nTi2FaBEVukCTEemrxrnCYU4brTCiBTYcJZxO9HqozJA.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var url in iconUrls)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconBox(imageUrl: url),
          ),
      ],
    );
  }
}

class IconBox extends StatelessWidget {
  final String imageUrl;

  const IconBox({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Center(
        child: Image.network(
          imageUrl,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}