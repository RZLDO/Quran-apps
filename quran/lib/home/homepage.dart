import 'package:flutter/material.dart';
import 'package:quran/colorapp.dart';
import 'package:quran/widget/bigtext.dart';
import 'package:quran/widget/smalltext.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(text: "assalamualaikum, Rizaldo"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(
                      text: "Let's Pray Today",
                      color: Color(0xFF1B2430),
                      size: 22,
                    ),
                    Icon(
                      Icons.notifications_active,
                      size: 26,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorAPP.greyAccent,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search Anything",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  )
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: BigText(
              text: "Most Recently",
              size: 14,
              color: Color(0xFF1B2430),
            ),
          ),
          
        ]),
      ),
    );
  }
}
