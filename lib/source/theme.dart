import 'package:flutter/material.dart';

Color mainBlue = Color(0xFF0001FC);
Color white = Colors.white;
Color black = Color(0xFF0A1034);
Color bg = Color(0xFFFDFEFF);
Color yellow = Color(0xFFFBDF00);
Color blueGray = Color(0xFFE0ECF8);
Color blueLightGray = Color(0xFFEFF5FB);
Color blueText = Color(0xFF1F53E4);
Color gray = Color(0xFFA7A9BE);
Color grayOpacity = Color(0xFFA7A9BE).withOpacity(0.32);
Color purple = Color(0xFF7077FA);
Color success = Color(0xFF2DB57D);

double hh(double size) => (size * 960) / 812;
double ww(double size) => (size * 454.73684) / 375;

Widget padding({@required Widget child}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: ww(16)),
      child: child,
    );

TextStyle semi12_ls2({Color color}) => TextStyle(
      fontSize: hh(12),
      fontWeight: FontWeight.w600,
      color: color,
      letterSpacing: 6,
    );

TextStyle semi18({Color color}) => TextStyle(
      fontSize: hh(18),
      color: color,
      fontWeight: FontWeight.w600,
    );

TextStyle reg18({Color color}) => TextStyle(
      fontSize: hh(18),
      color: color,
      fontWeight: FontWeight.w500,
    );

TextStyle reg16({Color color}) => TextStyle(
      fontSize: hh(16),
      color: color,
      fontWeight: FontWeight.w500,
    );

TextStyle reg14({Color color}) => TextStyle(
      fontSize: hh(14),
      color: color,
      fontWeight: FontWeight.w500,
    );

TextStyle bold24({Color color}) => TextStyle(
      fontSize: hh(24),
      color: color,
      fontWeight: FontWeight.w700,
    );

TextStyle black32({Color color}) => TextStyle(
      fontSize: hh(32),
      color: color,
      fontWeight: FontWeight.w900,
    );

TextStyle med12({Color color}) => TextStyle(
      fontSize: hh(12),
      color: color,
      fontWeight: FontWeight.w500,
    );

TextStyle med14({Color color}) => TextStyle(
      fontSize: hh(14),
      color: color,
      fontWeight: FontWeight.w500,
    );

TextStyle med16({Color color}) => TextStyle(
      fontSize: hh(16),
      color: color,
      fontWeight: FontWeight.w500,
    );
