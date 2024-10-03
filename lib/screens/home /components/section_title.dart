import 'package:flutter/material.dart';
import 'package:ui_ecommerce/size_config.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text, // Menggunakan text dari parameter
            style: TextStyle(
              fontSize: getPropScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press, // Menggunakan press untuk aksi saat ditekan
            child: Text(
              "See More",
              style: TextStyle(
                color: Colors.blue, // Warna teks "See More"
              ),
            ),
          ),
        ],
      ),
    );
  }
}
