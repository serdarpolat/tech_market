import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';
import 'package:tech_market/source/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              "Login",
              style: bold24(color: white),
            ),
            Spacer(),
            textInput(title: "Full name"),
            SizedBox(height: hh(24)),
            textInput(title: "Email"),
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
                  "Don't have an account?",
                  style: reg18(color: yellow),
                ),
                TextButton(
                  onPressed: () => pushToPage(context, page: Register()),
                  child: Text(
                    "Sign Up",
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
