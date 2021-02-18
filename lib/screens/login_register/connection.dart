import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';
import 'package:tech_market/source/widgets.dart';

class Connection extends StatefulWidget {
  @override
  _ConnectionState createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  PageController ctrl = PageController();

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
          children: [
            Spacer(),
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
            Spacer(),
            primaryButton(
              title: "Create an account",
              color: white,
              ontap: () => pushReplace(context, page: Register()),
            ),
            SizedBox(height: hh(32)),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: hh(53),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/icons/google.png",
                        height: hh(25),
                      ),
                      SizedBox(width: ww(24)),
                      Text(
                        "Connect with Google",
                        style: semi18(color: Color(0xFF555555)),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(hh(4)),
                  color: white,
                ),
              ),
            ),
            SizedBox(height: hh(16)),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: hh(53),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/icons/facebook.png",
                        height: hh(25),
                      ),
                      SizedBox(width: ww(24)),
                      Text(
                        "Connect with Facebook",
                        style: semi18(color: white),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(hh(4)),
                  color: Color(0xFF415A93),
                ),
              ),
            ),
            SizedBox(height: hh(16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: reg18(color: yellow),
                ),
                TextButton(
                  onPressed: () => pushReplace(context, page: Login()),
                  child: Text(
                    "Login",
                    style: semi18(
                      color: yellow,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: hh(24)),
            skipForNow(context),
            SizedBox(height: hh(79)),
          ],
        ),
      ),
    );
  }
}
