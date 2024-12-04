import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/rounded_icon_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/products.dart';
import 'package:ui_ecommerce/size_config.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int currentSelectedColor = 0;
  int totalSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
      child: Row(
        children: [
          ... List.generate(
            widget.product.colors.length, (index) {
              final Color color = widget.product.colors[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedColor = index;
                  });
                },
                child: ItemColorDot(
                  color: color,
                  isSelected: index == currentSelectedColor,
                )
              );
            }
          ),
          const Spacer(),
          SizedBox(
            height: getPropScreenHeight(40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedIconBtn(
                  icon: Icons.remove,
                  showShadow: true, 
                  press: () {
                    setState(() {
                      if(totalSelected > 1) {
                        totalSelected--;
                      }
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "$totalSelected",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                RoundedIconBtn(
                  icon: Icons.add, 
                  showShadow: true,
                  press: () {
                    setState(() {
                      totalSelected++;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemColorDot extends StatelessWidget {
  const ItemColorDot({
    super.key, required this.color, this.isSelected = false, 
  });
  
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: defaultDuration,
      margin: EdgeInsets.only(left: getPropScreenWidth(10)),
      padding: EdgeInsets.all(getPropScreenWidth(8)),
      height: getPropScreenHeight(isSelected ? 40 : 25),
      width: getPropScreenHeight(isSelected ? 40 : 25),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
          width: 2,
        ),
      ),
    );
  }
}