import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

Widget primaryButton({String title, Function ontap, Color color}) =>
    GestureDetector(
      onTap: ontap,
      child: Container(
        height: hh(53),
        child: Center(
          child: Text(
            title,
            style: semi18(
              color: color == mainBlue ? white : mainBlue,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(hh(4)),
          color: color,
        ),
      ),
    );

Future<dynamic> pushReplace(BuildContext context, {Widget page}) =>
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));

Future<dynamic> pushToPage(BuildContext context, {Widget page}) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));

Widget skipForNow(BuildContext context) => TextButton(
      onPressed: () => pushReplace(context, page: Home()),
      child: Text(
        "Skip for now",
        textAlign: TextAlign.center,
        style: semi18(
          color: white,
        ),
      ),
    );

Widget textInput({String title}) => Container(
      width: ww(311),
      height: hh(62),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: semi18(color: white),
          ),
          Spacer(),
          Container(
            width: ww(311),
            height: hh(35),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: ww(12)),
                border: InputBorder.none,
                labelText: title,
                labelStyle: reg16(color: gray),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: white,
              ),
              borderRadius: BorderRadius.circular(hh(4)),
            ),
          ),
        ],
      ),
    );

Widget padding({@required Widget child}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: ww(16)),
      child: child,
    );
