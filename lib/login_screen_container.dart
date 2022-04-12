import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenContainer extends StatelessWidget {
  const LoginScreenContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Text('English (United States)'),
          ),
          Column(
            children: [
              Text('Instagram',
                  style: GoogleFonts.grandHotel(
                      textStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w400,
                          letterSpacing:
                              0.8)) //  (textStyle: TextStyle(fontSize: 42)),
                  ),
            ],
          ),
          Container(
              height: 60,
              width: double.infinity,
              child: Center(child: Text('Dont have an account? Sign up.')),
              color: Colors.grey[200]),
        ],
      ),
    );
  }
}
