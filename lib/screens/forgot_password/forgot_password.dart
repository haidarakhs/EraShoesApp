import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgot_password';

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
