import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/screens/otp/otp_screen.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  final String kNameNullError = "Please enter your name";
  final String kEmailNullError = "Please enter your email";
  final String kPhoneNumberNullError = "Please enter your phone number";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          firstNameFormField(),
          SizedBox(
            height: (20),
          ),
          lastNameFormField(),
          SizedBox(
            height: (20),
          ),
          phoneNumberFormField(),
          SizedBox(
            height: (20),
          ),
          addressFormField(),
          SizedBox(
            height: (20),
          ),
          MyDefaultButton(
            text: "next",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }

               if (errors.isEmpty) {
               Navigator.pushNamed(context, OtpScreen.routeName);

              }
            }, onPressed: () {  },
          ),
        ],
      ),
    );
  }

  TextFormField addressFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
      },
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError; // Return the error message
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          padding: EdgeInsets.all((16)),
          onPressed: () {},
          icon: const Icon(Icons.email_outlined),
        ),
      ),
    );
  }

  TextFormField phoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      onSaved: (newValue) => phoneNumber = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return kPhoneNumberNullError; // Return the error message
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your Phone Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          padding: EdgeInsets.all((16)),
          onPressed: () {},
          icon: const Icon(Icons.phone_outlined),
        ),
      ),
    );
  }

  TextFormField lastNameFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
      },
      onSaved: (newValue) => lastName = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return kNameNullError; // Return the error message
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your Last Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          padding: EdgeInsets.all((16)),
          onPressed: () {},
          icon: const Icon(Icons.account_circle_outlined),
        ),
      ),
    );
  }

  TextFormField firstNameFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
      },
      onSaved: (newValue) => firstName = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return kNameNullError; // Return the error message
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          padding: EdgeInsets.all((16)),
          onPressed: () {},
          icon: const Icon(Icons.account_circle_outlined),
        ),
      ),
    );
    
  }
}
