import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/screens/profile/components/item_button_profile.dart';
import 'package:ui_ecommerce/screens/profile/components/profile_picture.dart';
import 'package:ui_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ui_ecommerce/size_config.dart';
import 'package:ui_ecommerce/state_managements/auth_provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfilePicture(),
          SizedBox(height: getPropScreenWidth(20)),
          Consumer<AuthProvider>(
            builder: (context, auth,child) {
              return Text(auth.email ?? '');
            }
          ),
          SizedBox(height: 10,),
          ItemButtonProfile(
            svgIcon: "assets/icons/User Icon.svg", 
            title: "My Account",
            press: (){
      
            },
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Bell.svg", 
            title: "Notifications",
            press: (){
      
            },
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Settings.svg", 
            title: "Settings",
            press: (){
      
            },
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Question mark.svg", 
            title: "Help Center",
            press: (){
      
            },
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Log out.svg", 
            title: "Log-out",
            press: (){
              Provider.of<AuthProvider>(context, listen: false).setAuth(false);
              Navigator.pushNamedAndRemoveUntil(
                context, SignInScreen.routeName, (Route<dynamic> route) => false
              );
            },
          ),
        ],
      ),
    );
  }
}

