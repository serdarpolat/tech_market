import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class Main extends StatefulWidget {
  final Function openCategories;

  const Main({Key key, this.openCategories}) : super(key: key);
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Size get s => MediaQuery.of(context).size;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(56)),
          padding(
              child: Text(
            "Home",
            style: black32(color: black),
          )),
          SizedBox(height: hh(24)),
          Container(
            width: s.width,
            height: hh(130),
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (page) {
                    setState(() {
                      index = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return padding(
                      child: Container(
                        height: hh(110),
                        margin: EdgeInsets.only(bottom: ww(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Bose Home Speaker",
                                  style: semi18(color: white),
                                ),
                                Text(
                                  "USD 279\$",
                                  style: med12(color: blueGray),
                                ),
                              ],
                            ),
                            SizedBox(width: ww(44)),
                            Image.asset("assets/img/images/bose.png",
                                height: hh(78)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: mainBlue,
                          borderRadius: BorderRadius.circular(hh(6)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 6),
                              blurRadius: 12,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: s.width,
                    height: ww(11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Dot(active: index == 0),
                        Dot(active: index == 1),
                        Dot(active: index == 2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(29)),
          padding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icons(
                    ontap: widget.openCategories,
                    img: "categories",
                    title: "Categories"),
                icons(img: "favorites", title: "Favorites"),
                icons(img: "gift", title: "Gifts"),
                icons(img: "best_selling", title: "Best Selling"),
              ],
            ),
          ),
          SizedBox(height: hh(40)),
          Container(
            width: s.width,
            child: Text(
              "Sales",
              textAlign: TextAlign.center,
              style: bold24(color: black),
            ),
          ),
          SizedBox(height: hh(16)),
          padding(
            child: Wrap(
              spacing: ww(20),
              runSpacing: ww(20),
              children: [
                categoryItem(img: "samsung", title: "Smartphones"),
                categoryItem(img: "monitor", title: "Monitors"),
                categoryItem(img: "laptop1", title: "Laptops"),
                categoryItem(img: "headphone", title: "Headphone"),
                categoryItem(img: "camera", title: "Camera"),
                categoryItem(img: "joystick", title: "Joystick"),
              ],
            ),
          ),
          SizedBox(
            height: hh(90),
          )
        ],
      ),
    );
  }
}

Widget categoryItem({String img, String title}) => Container(
      width: ww(161),
      height: hh(251),
      padding: EdgeInsets.all(hh(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ww(39),
            height: hh(22),
            child: Center(
              child: Text(
                "-50%",
                style: med12(color: blueText),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(hh(2)),
              color: blueGray,
            ),
          ),
          SizedBox(height: hh(23)),
          Container(
            height: hh(130),
            child: Center(
              child: Image.asset("assets/img/images/$img.png"),
            ),
          ),
          Spacer(),
          Container(
            child: Center(
              child: Text(
                title,
                style: semi18(color: black),
              ),
            ),
          ),
          SizedBox(height: hh(16)),
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
    );

Widget icons({String img, String title, Function ontap}) => GestureDetector(
      onTap: ontap,
      child: Container(
        color: bg,
        child: Column(
          children: [
            Container(
              width: ww(56),
              height: ww(56),
              child: Center(
                child: Image.asset(
                  "assets/img/icons/$img.png",
                  width: ww(18),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: blueGray,
              ),
            ),
            SizedBox(height: hh(8)),
            Text(title, style: med14(color: blueText))
          ],
        ),
      ),
    );

class Dot extends StatelessWidget {
  final bool active;

  const Dot({Key key, this.active}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        width: active ? ww(7) : ww(5),
        height: active ? ww(7) : ww(5),
        decoration: BoxDecoration(
          color: active ? gray : gray.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
