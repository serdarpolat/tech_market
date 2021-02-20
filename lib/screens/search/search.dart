import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class Search extends StatelessWidget {
  final Function openSearchProduct;

  const Search({Key key, this.openSearchProduct}) : super(key: key);
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
                "Search",
                style: black32(color: black),
              ),
            ),
            SizedBox(height: hh(32)),
            padding(
              child: Container(
                width: ww(343),
                height: hh(43),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                      color: mainBlue,
                    ),
                    Container(
                      width: 1.5,
                      height: hh(29),
                      color: gray,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: ww(12)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "What are you looking for?",
                            labelStyle: reg16(color: mainBlue.withOpacity(0.5)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: blueGray,
                  borderRadius: BorderRadius.circular(hh(43)),
                ),
              ),
            ),
            SizedBox(height: hh(32)),
            padding(
              child: Text(
                "Last Viewed",
                style: bold24(color: black),
              ),
            ),
            SizedBox(height: hh(16)),
            GestureDetector(
              onTap: openSearchProduct,
              child: searchListItem(
                img: "google_home",
                title: "Google Home Mini",
                price: "\$ 49",
              ),
            ),
            SizedBox(height: hh(16)),
            searchListItem(
              img: "charger",
              title: "USB C CHarger",
              price: "\$ 11",
            ),
            SizedBox(height: hh(32)),
            padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lastest Search",
                    style: bold24(color: black),
                  ),
                  Text(
                    "Clean all history",
                    style: reg14(color: gray),
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(22)),
            padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Smart speaker",
                    style: reg16(color: gray),
                  ),
                  Image.asset("assets/img/icons/erase.png", height: hh(10)),
                ],
              ),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "USB-C Charger",
                    style: reg16(color: gray),
                  ),
                  Image.asset("assets/img/icons/erase.png", height: hh(10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget searchListItem({String img, String title, String price}) => padding(
      child: Container(
        width: ww(343),
        height: hh(105),
        padding: EdgeInsets.symmetric(horizontal: ww(27)),
        child: Row(
          children: [
            Image.asset(
              "assets/img/images/$img.png",
              height: hh(50),
            ),
            SizedBox(width: ww(27)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: semi18(color: black),
                ),
                SizedBox(height: hh(6)),
                Text(
                  price,
                  style: med14(color: mainBlue),
                ),
              ],
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
    );
