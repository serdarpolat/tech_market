import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class Shopping extends StatelessWidget {
  final Function orderValidate;

  const Shopping({Key key, this.orderValidate}) : super(key: key);
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
                "Checkout",
                style: black32(color: black),
              ),
            ),
            Container(
              width: s.width,
              height: hh(388),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: ww(16), top: ww(32), bottom: ww(32)),
                    child: cartItem(s, item: cartItems[index]),
                  );
                },
              ),
            ),
            padding(
              child: Container(
                width: ww(343),
                child: Column(
                  children: [
                    checkDetail(
                      title: "Delivery",
                      right1: "12 Maddison Avenue, NYC",
                      right2: "Fast delivery: 17/04/21",
                      clr: gray,
                    ),
                    Divider(
                      color: gray,
                      height: 1,
                    ),
                    checkDetail(
                      title: "Payment",
                      right1: "Visa  **** 0678",
                      right2: "Expire: 02/24",
                      clr: gray,
                    ),
                    Divider(
                      color: gray,
                      height: 1,
                    ),
                    checkDetail(
                      title: "Total",
                      right1: "\$ 1.088",
                      right2: "Enter a discount code",
                      clr: success,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: hh(10)),
            padding(
              child: primaryButton(
                color: mainBlue,
                title: "Pay",
                ontap: orderValidate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget checkDetail({String title, String right1, String right2, Color clr}) =>
    Padding(
      padding: EdgeInsets.symmetric(vertical: hh(12)),
      child: Container(
        width: ww(343),
        height: hh(37),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: semi18(color: black),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  right1,
                  style: med16(color: mainBlue),
                ),
                Text(
                  right2,
                  style: reg12(color: clr),
                ),
              ],
            ),
          ],
        ),
      ),
    );

List<CartItemModel> cartItems = [
  CartItemModel("iphone11", "iPhone 11 Pro", "999", "White", "1"),
  CartItemModel("airpods", "Airpods", "89", "White", "1"),
];

class CartItemModel {
  String img;
  String title;
  String price;
  String color;
  String piece;

  CartItemModel(this.img, this.title, this.price, this.color, this.piece);
}

Widget cartItem(Size s, {CartItemModel item}) => Container(
      width: ww(224),
      height: hh(324),
      padding: EdgeInsets.all(ww(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ww(34),
            height: hh(22),
            child: Center(
              child: Text(
                "New",
                style: med12(color: mainBlue),
              ),
            ),
            decoration: BoxDecoration(
              color: blueGray,
              borderRadius: BorderRadius.circular(hh(2)),
            ),
          ),
          Spacer(),
          Container(
            width: s.width,
            height: hh(130),
            child: Container(
              width: s.width,
              height: hh(190),
              child: Image.asset("assets/img/images/${item.img}.png"),
            ),
          ),
          Spacer(),
          Container(
            height: hh(64),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.title,
                      style: semi18(color: black),
                    ),
                    Text(
                      "\$ ${item.price}",
                      style: med14(color: mainBlue),
                    ),
                    Text(
                      item.color,
                      style: reg12(color: gray),
                    ),
                  ],
                ),
                Container(
                  width: ww(22),
                  height: hh(25),
                  child: Center(
                    child: Text(
                      "x${item.piece}",
                      style: reg14(color: mainBlue),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: blueGray,
                    borderRadius: BorderRadius.circular(hh(2)),
                  ),
                ),
              ],
            ),
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
            blurRadius: 24,
          ),
        ],
      ),
    );
