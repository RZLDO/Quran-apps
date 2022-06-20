import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quran/colorapp.dart';
import 'package:quran/home/homepage.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "asset/image/mosque.jfif",
                  fit: BoxFit.cover,
                ),
              )),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(color: Colors.transparent),
            ),
          ),
          Positioned(
              bottom: 300,
              left: 50,
              right: 40,
              child: Image.asset(
                "asset/image/bismillah.png",
                height: 150,
              )),
          Positioned(
              bottom: 250,
              left: 35,
              child: Text(
                "Take the time to read the Al-Qur'an",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorAPP.whiteColor),
              )),
          Positioned(
              bottom: 230,
              left: 70,
              child: Text(
                "In the midst of your busy life",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorAPP.whiteColor),
              )),
          Positioned(
              bottom: 150,
              left: 105,
              child: GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => HomePage());
                  Navigator.push(context, route);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorAPP.MainColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorAPP.whiteColor),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
