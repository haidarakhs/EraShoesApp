import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWithTrigger extends StatelessWidget {
  final String svgIcon;
  final String trigger;

  const IconWithTrigger({
    super.key,
    required this.svgIcon,
    required this.trigger,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          svgIcon,
          height: 24,
          width: 24,
        ),
        if (trigger.isNotEmpty)
          Positioned(
            right: -2,
            top: -2,
            child: Container(
              padding: const EdgeInsets.all(3),
              height: 16,
              width: 16,
              decoration: const BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  trigger,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
