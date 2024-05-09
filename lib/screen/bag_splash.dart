import 'dart:async';

import 'package:bag_flutter/screen/bag_login.dart';
import 'package:bag_flutter/screen/bag_registration.dart';
import 'package:bag_flutter/screen/listView/bagHome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_with_Image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:  [
                Colors.red,
                Colors.redAccent,
                Colors.red
              ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/icon/cart.png")),
              Text("V.1.0.1",
                  style: GoogleFonts.combo(
                      fontSize: 30,
                      color: Colors.white
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}