import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class EmailSettings extends StatelessWidget {
  final Function closeEmailSettings;

  const EmailSettings({Key key, this.closeEmailSettings}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      padding: EdgeInsets.only(bottom: hh(73)),
      color: bg,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hh(50)),
            Container(
              width: s.width,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 6),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: black,
                onPressed: closeEmailSettings,
              ),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Text(
                "Email",
                style: bold24(color: black),
              ),
            ),
            SizedBox(height: hh(64)),
            padding(
              child: Container(
                width: ww(343),
                height: hh(44),
                margin: EdgeInsets.only(bottom: hh(40)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Email Address",
                      style: semi18(color: black),
                    ),
                    SizedBox(height: hh(4)),
                    Text(
                      "johndoe@email.com",
                      style: med16(color: mainBlue),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: hh(56)),
            padding(
              child: Container(
                width: ww(343),
                height: hh(64),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Email Address",
                      style: semi18(color: black),
                    ),
                    Spacer(),
                    Container(
                      width: ww(343),
                      height: hh(40),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: ww(8)),
                          hintText: "Email",
                          hintStyle: reg14(color: gray),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(
                          color: gray,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          hh(4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: hh(32)),
            padding(
              child: Container(
                width: ww(343),
                height: hh(64),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Email Address",
                      style: semi18(color: black),
                    ),
                    Spacer(),
                    Container(
                      width: ww(343),
                      height: hh(40),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: ww(8)),
                          hintText: "Email",
                          hintStyle: reg14(color: gray),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(
                          color: gray,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          hh(4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: hh(64)),
            padding(
              child: primaryButton(
                color: mainBlue,
                title: "Confirm",
                ontap: closeEmailSettings,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
