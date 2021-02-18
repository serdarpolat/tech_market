import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_market/source/index.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Size get s => MediaQuery.of(context).size;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Consumer<PagesState>(
        builder: (BuildContext context, state, Widget child) {
          return Container(
            width: s.width,
            height: s.height,
            child: Stack(
              children: [
                //pageList[state.page],
                PageView.builder(
                  controller: pageController,
                  onPageChanged: (page) {
                    state.changePage(page);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return pageList[index];
                  },
                ),
                Container(
                  width: s.width,
                  height: MediaQuery.of(context).padding.top,
                  color: bg,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: s.width,
                    height: hh(73),
                    color: blueGray,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: ww(32)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          bottomIcons.length,
                          (index) {
                            return GestureDetector(
                              onTap: () {
                                state.changePage(index);
                                pageController.animateToPage(
                                  state.page,
                                  duration: Duration(milliseconds: 360),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: bottomBarItem(
                                  img: bottomIcons[index].img,
                                  isActive:
                                      bottomIcons[index].idx == state.page),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<Widget> pageList = [
  Main(),
  Search(),
  Shopping(),
  Profile(),
];

class BottomModel {
  String img;
  int idx;

  BottomModel(this.img, this.idx);
}

List<BottomModel> bottomIcons = [
  BottomModel("home", 0),
  BottomModel("search", 1),
  BottomModel("cart", 2),
  BottomModel("profile", 3),
];

Widget bottomBarItem({String img, bool isActive}) => Container(
      padding: EdgeInsets.all(hh(12)),
      color: blueGray,
      child: Image.asset(
        "assets/img/icons/$img.png",
        color: isActive ? mainBlue : black,
        height: hh(18),
      ),
    );
