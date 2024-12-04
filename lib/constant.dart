/* Saving All Constant Values */

import 'package:flutter/material.dart';
import 'package:ui_ecommerce/size_config.dart';

const kPrimaryColor = Color(0xff357ab7);
const kPrimaryLightColor = Color(0xffe3f2fd);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
      Color(0xff6fbaff), // A lighter and brighter blue
      Color(0xff357ab7), // A slightly darker blue for contrast
    ]
);

const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0xff757575);
const kInActiveIconColor = Color(0xFFB6B6B6);


const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getPropScreenWidth(28),
  fontWeight: FontWeight.bold,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

// Complete Profile
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter address";

// OTP style

final otpDecoration = InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getPropScreenHeight(15),
                    ),
                    enabledBorder: otpOutlineInputBorder(),
                    focusedBorder: otpOutlineInputBorder(),
                    border: otpOutlineInputBorder(),
                  );

OutlineInputBorder otpOutlineInputBorder() {
  return OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: kTextColor),
                  );
}

const defaultDuration = Duration(milliseconds: 250);

// const for see more
TextStyle seeMoreStyle = TextStyle(
    fontSize: getPropScreenWidth(16),
    fontWeight: FontWeight.bold,
    color: kPrimaryColor);
