import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/custom_suffix_icon.dart';
import 'package:ui_ecommerce/components/error_form.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ui_ecommerce/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  String? password;
  String? confirmPassword;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordConfirmationFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          ErrorForm(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          signUpButton(), // Sign Up button
        ],
      ),
    );
  }

  Widget signUpButton() {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: BorderSide(color: Colors.white), // Border color
          backgroundColor: Colors.transparent, // Background transparent
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            if (errors.isEmpty) {
              Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            }
          }
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white, // Button text color
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        setState(() {
          password = value;
        });
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 &&
            (!errors.contains(kShortPassError) &&
                !errors.contains(kPassNullError))) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      style: const TextStyle(color: Colors.white), // Input text color
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        labelStyle: const TextStyle(
          color: Colors.white, // Label color
          fontSize: 16,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey, // Hint color
        ),
        suffixIcon: const CustomSuffixIcon(
          icon: "assets/icons/Lock.svg",
          size: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white), // Border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white), // Border color
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField passwordConfirmationFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == value) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty || errors.contains(kMatchPassError)) {
          return "";
        } else if (value != password) {
          setState(() {
            errors.add(kMatchPassError);
          });
        }
        return null;
      },
      obscureText: true,
      style: const TextStyle(color: Colors.white), // Input text color
      decoration: InputDecoration(
        labelText: "Password Confirmation",
        hintText: "Confirm Your Password",
        labelStyle: const TextStyle(
          color: Colors.white, // Label color
          fontSize: 16,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey, // Hint color
        ),
        suffixIcon: const CustomSuffixIcon(
          icon: "assets/icons/Lock.svg",
          size: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white), // Border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white), // Border color
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            (!errors.contains(kPassNullError)) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(color: Colors.white), // Input text color
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        labelStyle: const TextStyle(
          color: Colors.white, // Label color
          fontSize: 16,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey, // Hint color
        ),
        suffixIcon: const CustomSuffixIcon(
          icon: "assets/icons/Mail.svg",
          size: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white), // Border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white), // Border color
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
