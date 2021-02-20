import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class Profile extends StatelessWidget {
  final Function openAccountInformation;

  const Profile({Key key, this.openAccountInformation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bg,
      body: Container(
        width: s.width,
        height: s.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hh(56)),
            padding(
              child: Text(
                "Account",
                style: black32(color: black),
              ),
            ),
            SizedBox(height: hh(24)),
            padding(
              child: Container(
                width: ww(343),
                height: hh(80),
                child: Row(
                  children: [
                    Container(
                      width: hh(80),
                      height: hh(80),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/img/images/user.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: ww(16)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "John Doe",
                          style: bold24(color: black),
                        ),
                        SizedBox(height: hh(6)),
                        Text(
                          "Premium Member",
                          style: med16(color: mainBlue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: hh(40)),
            accountItem("Orders"),
            accountItem(
              "Account Information",
              ontap: openAccountInformation,
            ),
            accountItem("Security and Settings"),
            accountItem("Help"),
          ],
        ),
      ),
    );
  }
}

Widget accountItem(String title, {Function ontap}) => padding(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: ww(343),
          height: hh(53),
          padding: EdgeInsets.only(left: ww(24)),
          margin: EdgeInsets.only(bottom: hh(16)),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: semi18(color: black),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(hh(6)),
            color: white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 8),
                blurRadius: 40,
              ),
            ],
          ),
        ),
      ),
    );
