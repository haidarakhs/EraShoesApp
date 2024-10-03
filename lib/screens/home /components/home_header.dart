import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/home%20/components/icon_btn_with_counter.dart';
import 'package:ui_ecommerce/screens/home%20/components/search_field.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: getPropScreenHeight(20),
          ),
         const SearchField(),
           IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 3,
            press: () {
            
            },
          ),
           IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {
             
            },
          ),
        ],
      ),
    );
  }
}

