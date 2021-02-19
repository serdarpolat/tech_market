import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class CatagoryProducts extends StatelessWidget {
  final Function closeCategoryProducts;

  const CatagoryProducts({Key key, this.closeCategoryProducts})
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
                onPressed: closeCategoryProducts,
              ),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Text(
                "Laptop",
                style: bold24(color: black),
              ),
            ),
            SizedBox(height: hh(24)),
            padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: ww(151),
                    height: hh(33),
                    padding: EdgeInsets.only(left: ww(6), right: ww(6)),
                    child: Row(
                      children: [
                        Text(
                          "Ascending price",
                          style: reg14(color: gray),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_upward, size: 16, color: gray),
                        Icon(Icons.arrow_drop_down_outlined,
                            size: 16, color: gray),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(hh(4)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: Offset(0, 16),
                          blurRadius: 24,
                        ),
                      ],
                      border: Border.all(
                        color: gray,
                        width: ww(1.5),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Filters",
                        style: med14(color: gray),
                      ),
                      Icon(Icons.arrow_drop_down_outlined,
                          size: 16, color: gray),
                    ],
                  ),
                  Image.asset(
                    "assets/img/icons/dash.png",
                    width: ww(18),
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(32)),
            padding(
              child: Wrap(
                spacing: ww(9),
                runSpacing: ww(9),
                children: List.generate(
                  prodItems.length,
                  (index) {
                    return prodItem(itm: prodItems[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProdItemModel {
  String title;
  String price;
  String img;

  ProdItemModel(this.title, this.price, this.img);
}

List<ProdItemModel> prodItems = [
  ProdItemModel("Surface Laptop", "999", "laptop1"),
  ProdItemModel("XPS Laptop 3", "899", "laptop2"),
  ProdItemModel("LG Gram 17", "a399", "laptop3"),
  ProdItemModel("Macbook Pro 13", "1299", "laptop4"),
  ProdItemModel("MateBook 13", "949", "laptop5"),
  ProdItemModel("PixelBook Go", "849", "laptop6"),
];

Widget prodItem({@required ProdItemModel itm}) => Container(
      width: ww(167),
      height: hh(196),
      child: Column(
        children: [
          Spacer(),
          Image.asset("assets/img/images/${itm.img}.png", height: hh(69)),
          Spacer(),
          Container(
            width: ww(167),
            padding: EdgeInsets.only(left: ww(12)),
            child: Text(
              itm.title,
              textAlign: TextAlign.left,
              style: med16(color: black),
            ),
          ),
          Container(
            width: ww(167),
            padding: EdgeInsets.only(left: ww(12)),
            child: Text(
              "\$ ${itm.price}",
              textAlign: TextAlign.left,
              style: med12(color: mainBlue),
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
            offset: Offset(0, 16),
            blurRadius: 24,
          ),
        ],
      ),
    );
