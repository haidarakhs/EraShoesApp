import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/otp/components/otp_form.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            Text(
              "OTP Verification",
              style: headingStyle,
            ),
           
            timer(),
            SizedBox(height: SizeConfig.screenHeight * 0.15,),

            OtpForm()
          
          ],
        ),
      ),
    );
  }

  Row timer() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "This Code will expired in  ",
                textAlign: TextAlign.center,
              ),
              TweenAnimationBuilder(
                  tween: Tween(begin: 60.0, end: 0),
                  duration: Duration(seconds: 60),
                  builder: (context, value, child) {
                    return Text("00:${value.toInt()}",
                    style: TextStyle(
                     fontWeight: FontWeight.bold
                    ),
                    );
                  },
                  onEnd: (){},
                  )
            ],
          );
  }
}


