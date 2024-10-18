import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/custom_suffix_icon.dart';
import 'package:ui_ecommerce/components/error_form.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ui_ecommerce/screens/home/home_screen.dart';
import 'package:ui_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:ui_ecommerce/size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool remember = false;
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email field
          emailFormFIeld(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // Password field
          passwordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          rememberAndForgot(),
          SizedBox(height: getProportionateScreenHeight(20)),
          ErrorForm(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          signInButton(), // Sign In button
        ],
      ),
    );
  }

  Row rememberAndForgot() {
    return Row(
      children: [
        Checkbox(
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value!;
            });
          },
          activeColor: const Color.fromARGB(255, 194, 193, 193),
        ),
        const Text('Remember me', style: TextStyle(color: Colors.white)),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
          },
          child: const Text(
            'Forgot Password',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // Re-designed Sign In Button with Border
  Widget signInButton() {
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
              Navigator.pushNamed(context, HomeScreen.routeName);
            }
          }
        },
        child: const Text(
          "Sign In",
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
      onChanged: (value) {
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
          fontSize: 16, // Label font size
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

  TextFormField emailFormFIeld() {
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
          fontSize: 16, // Label font size
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
