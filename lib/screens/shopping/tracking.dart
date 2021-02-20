import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class Tracking extends StatelessWidget {
  final Function closeTracking;

  const Tracking({Key key, this.closeTracking}) : super(key: key);
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
                onPressed: closeTracking,
              ),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Text(
                "Tracking",
                style: black32(color: black),
              ),
            ),
            SizedBox(height: hh(24)),
            padding(
              child: Container(
                width: ww(343),
                height: hh(62),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: ww(343),
                      height: hh(40),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: padding(
                              child: Container(
                                width: ww(343),
                                height: hh(4),
                                color: gray,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: padding(
                              child: Container(
                                width: ww(343 / 2),
                                height: hh(4),
                                color: mainBlue,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: ww(40),
                                height: ww(40),
                                child: Center(
                                  child: Image.asset(
                                    "assets/img/icons/check.png",
                                    color: white,
                                    width: ww(12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: mainBlue,
                                  border: Border.all(
                                    color: blueText,
                                    width: ww(4),
                                  ),
                                ),
                              ),
                              Container(
                                width: ww(40),
                                height: ww(40),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blueText,
                                ),
                              ),
                              Container(
                                width: ww(40),
                                height: ww(40),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blueGray,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: ww(343),
                      child: Row(
                        children: [
                          Container(
                            width: ww(343) / 3,
                            child: Text(
                              "Shipped",
                              textAlign: TextAlign.start,
                              style: reg12(color: black),
                            ),
                          ),
                          Container(
                            width: ww(343) / 3,
                            child: Text(
                              "In transit",
                              textAlign: TextAlign.center,
                              style: reg12(color: black),
                            ),
                          ),
                          Container(
                            width: ww(343 / 3),
                            child: Text(
                              "Delivered",
                              textAlign: TextAlign.end,
                              style: reg12(color: gray),
                            ),
                          ),
                        ],
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
                height: hh(88),
                padding: EdgeInsets.all(hh(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tracking Number :",
                      style: semi18(color: black),
                    ),
                    Text(
                      "UPS - LM40569863554NI",
                      style: med16(color: mainBlue),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(hh(6)),
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
            SizedBox(height: hh(24)),
            proccessOrder(
                date: "01/03/21", proccess: "Seller shipped your order"),
            proccessOrder(
                date: "02/03/21",
                proccess: "Your order left the sorting center"),
            proccessOrder(
                date: "03/03/21",
                proccess: "Your order has arrived in Paris, France"),
            proccessOrder(
                date: "04/03/21",
                proccess: "Your order has left in Paris, France"),
            padding(
              child: Container(
                padding: EdgeInsets.all(ww(8)),
                decoration: BoxDecoration(
                    color: success, borderRadius: BorderRadius.circular(ww(6))),
                child: Text(
                  "Report a problem",
                  style: med12(color: white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget proccessOrder({String date, String proccess}) => Padding(
      padding: EdgeInsets.only(bottom: hh(24), left: ww(16), right: ww(16)),
      child: Container(
        width: ww(343),
        height: hh(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              date,
              style: semi18(color: black),
            ),
            Text(
              proccess,
              style: reg12(color: gray),
            ),
          ],
        ),
      ),
    );
