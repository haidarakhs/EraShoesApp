import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/home%20/home_screen.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset("assets/images/success.png"),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Text(
            "Login Success!",
            style: TextStyle(
              fontSize: getPropScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            height:SizeConfig.screenHeight * 0.1 ,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: Colors.black,  // Ganti ukuran tombol
                textStyle: TextStyle(
                  fontSize: 20, 
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text("Back to home"),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
