import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';
import 'package:tech_market/source/widgets.dart';

class Open extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainBlue,
      body: Container(
        width: s.width,
        height: s.height,
        padding: EdgeInsets.symmetric(horizontal: ww(32)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LATECH",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: hh(42),
                fontWeight: FontWeight.w700,
                letterSpacing: 5,
                fontFamily: "RobotoSlab",
                color: white,
              ),
            ),
            Text(
              "TECH MARKET",
              textAlign: TextAlign.center,
              style: semi12_ls2(
                color: white,
              ),
            ),
            SizedBox(height: hh(57)),
            Container(
              width: ww(216),
              height: ww(216),
              child: Center(
                child: Image.asset(
                  "assets/img/icons/logo.png",
                  width: ww(148),
                ),
              ),
              decoration: BoxDecoration(
                color: mainBlue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: white.withOpacity(0.25),
                    offset: Offset(-hh(30), -hh(30)),
                    blurRadius: 80,
                  ),
                  BoxShadow(
                    color: black.withOpacity(0.1),
                    offset: Offset(hh(30), hh(30)),
                    blurRadius: 80,
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(72)),
            primaryButton(
              ontap: () {},
              title: "Let's Start",
              color: white,
            ),
            SizedBox(height: hh(72)),
            Text(
              "Skip for now",
              textAlign: TextAlign.center,
              style: semi18(
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
