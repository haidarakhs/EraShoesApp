import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/size_config.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: getPropScreenWidth(115),
        height: getPropScreenWidth(115),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/Profile Image.png"),
            ),
            Positioned(
              right: -10,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: getPropScreenWidth(42.5),
                width: getPropScreenWidth(42.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFF5F6F9),
                  border: Border.all(
                    color: Colors.white
                  ),
                ),
                child: SvgPicture.asset(
                  "assets/icons/Camera Icon.svg",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}