import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key, 
    required this.svgSrc, 
    required this.numOfItems,
    required this.press,
  });

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press, // Call the provided press function
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getPropScreenWidth(12)),
            height: getPropScreenHeight(46),
            width: getPropScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems > 0) 
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getPropScreenHeight(16),
                width: getPropScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    numOfItems.toString(), // Use numOfItems instead of hardcoded value
                    style: TextStyle(
                      fontSize: getPropScreenWidth(10),
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
