import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/size_config.dart';

class ItemButtonProfile extends StatelessWidget {
  const ItemButtonProfile({
    super.key, required this.svgIcon, required this.title, required this.press,
  });

  final String svgIcon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(20),
          vertical: getPropScreenWidth(10),
        ),
        padding: EdgeInsets.all(getPropScreenWidth(20)),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 221, 230, 255),
          borderRadius: BorderRadius.circular(15)
          
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svgIcon,
              color: kPrimaryColor,
              width: 22,
            ),
            SizedBox(width: getPropScreenWidth(20),),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: getPropScreenWidth(15),
                color: kTextColor,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded,color: Colors.orange,),
          ],
        ),
      ),
    );
  }
}

