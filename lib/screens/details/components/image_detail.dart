import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/products.dart';
import 'package:ui_ecommerce/size_config.dart';

class ImageDetail extends StatefulWidget {
  const ImageDetail({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ImageDetail> createState() => _ImageDetailState();
}

class _ImageDetailState extends State<ImageDetail> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getPropScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.product.images[currentIndex], 
              child: Image.asset(widget.product.images[currentIndex]),
            ), 
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.product.images.length,
            (index) {
              return smallImage(index: index);
            },
          ),
        )
      ],
    );
  }

  Widget smallImage({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: getPropScreenHeight(5)),
        duration: defaultDuration,
        padding: EdgeInsets.all(getPropScreenWidth(8)),
        height: getPropScreenWidth(50),
        width: getPropScreenWidth(50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kPrimaryColor.withOpacity(currentIndex == index ? 1 : 0.2)),
          color: currentIndex == index ? kPrimaryLightColor.withOpacity(0.7) : kPrimaryLightColor.withOpacity(0.2),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
