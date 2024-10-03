import 'package:flutter/material.dart';
import 'package:ui_ecommerce/model/Product.dart';
import 'package:ui_ecommerce/screens/home%20/components/product_card.dart';
import 'package:ui_ecommerce/screens/home%20/components/section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special Product",
          press: () {},
        ),
       const SizedBox(width: 20,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demoProducts.length,
            (index) => ProductCard(
              product: demoProducts[index], press: () { 
                
               },
            ),
          )
        ],
      ),
    ),
      ],
    );
  }
}
