import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class Categories extends StatelessWidget {
  final Function closeCategories;
  final Function openCatProducts;

  const Categories({Key key, this.closeCategories, this.openCatProducts})
      : super(key: key);
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
                  onPressed: closeCategories),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Text(
                "Categories",
                style: bold24(color: black),
              ),
            ),
            SizedBox(height: hh(25)),
            ...List.generate(catTitles.length, (index) {
              return catListItem(
                  title: catTitles[index], ontap: openCatProducts);
            }),
          ],
        ),
      ),
    );
  }
}

List<String> catTitles = [
  "All",
  "Computers",
  "Accessories",
  "Smartphones",
  "Smart objects",
  "Speakers",
  "Headphones",
];

Widget catListItem({String title, Function ontap}) => padding(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: ww(343),
          height: hh(77),
          padding: EdgeInsets.symmetric(horizontal: ww(24)),
          margin: EdgeInsets.only(bottom: hh(16)),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: semi18(color: black),
          ),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(
              hh(6),
            ),
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
    );
