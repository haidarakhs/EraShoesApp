import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/size_config.dart';
import 'package:ui_ecommerce/state_managements/cart_provider.dart';
import 'package:ui_ecommerce/state_managements/theme_provider.dart';

class CardBottomNavigation extends StatelessWidget {
  const CardBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) =>  Container(
        padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(30),
          vertical: getPropScreenWidth(25),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getPropScreenWidth(30)),
            topRight: Radius.circular(getPropScreenWidth(30)),
          ),
          color: theme.isDarkMode ? Colors.black : Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: theme.isDarkMode ? Colors.transparent  : const Color(0xFFDADADA).withOpacity(0.3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(getPropScreenWidth(10)),
                  height: getPropScreenWidth(40),
                  width: getPropScreenWidth(40),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add voucher code"),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 12,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: getPropScreenHeight(20)),
            Consumer<CartProvider>(
              builder: (context, cart, child) =>  Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: "Total:\n"),
                        TextSpan(
                          text: "£${cart.totalPrice}",
                          style: const TextStyle(
                            fontSize: 16, 
                            color: kTextColor
                          ),
                        ),
                      ]
                    )
                  ),
                  const Spacer(),
                  SizedBox(
                    width: getPropScreenWidth(190),
                    child: MyDefaultButton(
                      text: "Check Out",
                      press: () {
                        cart.clearCart();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Yaayy you checked out your items!")
                          )
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getPropScreenHeight(10)),
          ],
        ),
      ),
    );
  }
}