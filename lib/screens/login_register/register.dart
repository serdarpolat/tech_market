import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';
import 'package:tech_market/source/widgets.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            SizedBox(height: hh(67)),
            Text(
              "Create an account",
              style: bold24(color: white),
            ),
            Spacer(),
            textInput(title: "Full name"),
            SizedBox(height: hh(24)),
            textInput(title: "Email"),
            SizedBox(height: hh(24)),
            textInput(title: "Password"),
            SizedBox(height: hh(32)),
            primaryButton(
              title: "Validate",
              color: white,
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
                  onPressed: () => pushToPage(context, page: Login()),
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
