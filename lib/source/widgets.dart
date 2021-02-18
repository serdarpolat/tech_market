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
