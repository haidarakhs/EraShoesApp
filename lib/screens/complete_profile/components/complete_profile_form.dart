import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/custom_suffix_icon.dart';
import 'package:ui_ecommerce/components/error_form.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/otp/otp_screen.dart';
import 'package:ui_ecommerce/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? firstName;
  String? lastName;
  String? numberPhone;
  String? address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          firstNameForm(),
          SizedBox(height: getProportionateScreenHeight(20)),
          lastNameForm(),
          SizedBox(height: getProportionateScreenHeight(20)),
          phoneFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          addressFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          ErrorForm(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          MyDefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                if (errors.isEmpty) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              }
            }, backgroundColor: const Color.fromARGB(0, 0, 0, 0) ,
          ),
        ],
      ),
    );
  }

  TextFormField addressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Enter Your Address',
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Location point.svg',
          size: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }

  TextFormField phoneFormField() {
    return TextFormField(
      onSaved: (newValue) => numberPhone = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Enter Your Phone Number',
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/Phone.svg',
          size: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }

  TextFormField lastNameForm() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Last Name',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Enter Your Last Name',
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/User.svg',
          size: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }

  TextFormField firstNameForm() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Enter Your First Name',
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(
          icon: 'assets/icons/User.svg',
          size: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }
}
