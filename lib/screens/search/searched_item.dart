import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class SearchedItem extends StatefulWidget {
  final Function closeSearchedItem;
  final Function openCheckOut;

  const SearchedItem({Key key, this.closeSearchedItem, this.openCheckOut})
      : super(key: key);

  @override
  _SearchedItemState createState() => _SearchedItemState();
}

class _SearchedItemState extends State<SearchedItem> {
  int index = 0;

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
                onPressed: widget.closeSearchedItem,
              ),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Text(
                "iPhone 11 Pro",
                style: bold24(color: black),
              ),
            ),
            SizedBox(height: hh(24)),
            Container(
              width: s.width,
              height: hh(519),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  padding(
                    child: padding(
                      child: Container(
                        width: ww(38),
                        height: hh(25),
                        child: Center(
                          child: Text(
                            "New",
                            style: med14(color: mainBlue),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: blueGray,
                          borderRadius: BorderRadius.circular(hh(2)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(24)),
                  Container(
                    width: s.width,
                    height: hh(190),
                    child: PageView.builder(
                      onPageChanged: (page) {
                        setState(() {
                          index = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          width: s.width,
                          height: hh(190),
                          child: Image.asset("assets/img/images/iphone11.png"),
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                  SizedBox(height: hh(16)),
                  Container(
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
                  SizedBox(height: hh(16)),
                  padding(
                    child: padding(
                      child: Text(
                        "Color",
                        style: semi18(color: black),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(16)),
                  Container(
                    width: s.width,
                    child: Center(
                      child: Container(
                        width: ww(144),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: hh(24),
                              height: hh(24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF52514F),
                                border: Border.all(
                                  color: Colors.transparent,
                                  width: 2,
                                ),
                              ),
                            ),
                            Container(
                              width: hh(24),
                              height: hh(24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFEBEBE4),
                                border: Border.all(
                                  color: mainBlue,
                                  width: 2,
                                ),
                              ),
                            ),
                            Container(
                              width: hh(24),
                              height: hh(24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF6F7972),
                                border: Border.all(
                                  color: Colors.transparent,
                                  width: 2,
                                ),
                              ),
                            ),
                            Container(
                              width: hh(24),
                              height: hh(24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF5D8C0),
                                border: Border.all(
                                  color: Colors.transparent,
                                  width: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(32)),
                  padding(
                    child: padding(
                      child: Text(
                        "Capacity",
                        style: semi18(color: black),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(16)),
                  padding(
                    child: padding(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "64 GB",
                            style: med16(color: mainBlue),
                          ),
                          SizedBox(width: ww(16)),
                          Text(
                            "256 GB",
                            style: med16(color: gray),
                          ),
                          SizedBox(width: ww(16)),
                          Text(
                            "512 GB",
                            style: med16(color: gray),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: hh(32)),
                  padding(
                    child: primaryButton(
                      color: mainBlue,
                      title: "Add to cart",
                      ontap: widget.openCheckOut,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
