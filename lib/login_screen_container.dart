import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenContainer extends StatelessWidget {
  const LoginScreenContainer({Key? key}) : super(key: key);
  static const IconData facebook =
      IconData(0xe255, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 35,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('English (United States)'),
                ),
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: "Phone number, email or username",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.blue)),
                        // style: OutlinedButton.styleFrom(
                        //     side: BorderSide(width: 5.0, color: Colors.blue)
                        onPressed: () {},
                        child: Text('Log in'),
                      ),
                    ),
                  ),
                  Center(
                    child:
                        Text('Forget your login details? Get help signing in'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.minPositive,
                            height: double.minPositive,
                            margin: EdgeInsets.only(right: 8),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'OR',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.8),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.minPositive,
                            height: double.minPositive,
                            margin: EdgeInsets.only(left: 8),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            facebook,
                            color: Colors.blue,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Text(
                              'Log in with Facebook',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: Text(
                        'Dont have an account?',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Center(
                      child: Text(
                        'Sign up.',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
