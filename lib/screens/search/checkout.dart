import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class CheckOut extends StatelessWidget {
  final Function closeCheckout;

  const CheckOut({Key key, this.closeCheckout}) : super(key: key);

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
          color: white.withOpacity(0.56),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img/icons/cart.png", height: hh(60)),
              SizedBox(height: hh(22)),
              Text(
                "Product added to cart!",
                style: bold24(color: black),
              ),
              SizedBox(height: hh(22)),
              padding(
                child: primaryButton(
                  title: "Back to shopping",
                  color: mainBlue,
                  ontap: closeCheckout,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
