import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class OrderValidate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 64,
          sigmaY: 64,
        ),
        child: Container(
          width: s.width,
          height: s.height,
          color: mainBlue.withOpacity(0.44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: ww(180),
                height: ww(180),
                padding: EdgeInsets.all(ww(15)),
                child: Container(
                  width: ww(150),
                  height: ww(150),
                  padding: EdgeInsets.all(ww(15)),
                  child: Container(
                    width: ww(120),
                    height: ww(150),
                    child: Center(
                      child: Image.asset("assets/img/icons/check.png",
                          height: hh(60)),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: purple,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: hh(24)),
              Text(
                "Order validate",
                style: bold24(color: white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
