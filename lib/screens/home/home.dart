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
  bool openCategories = false;
  bool openCatProd = false;
  bool openSearchItem = false;
  bool openCheck = false;

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
                PageView(
                  controller: pageController,
                  onPageChanged: (page) {
                    state.changePage(page);
                  },
                  children: [
                    Main(
                      openCategories: () {
                        setState(() {
                          openCategories = !openCategories;
                        });
                      },
                    ),
                    Search(
                      openSearchProduct: () {
                        setState(() {
                          openSearchItem = !openSearchItem;
                        });
                      },
                    ),
                    Shopping(),
                    Profile(),
                  ],
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 60),
                  top: openSearchItem ? 0 : s.height,
                  left: 0,
                  child: SearchedItem(
                    openCheckOut: () {
                      setState(() {
                        openCheck = !openCheck;
                      });
                    },
                    closeSearchedItem: () {
                      setState(() {
                        openSearchItem = !openSearchItem;
                      });
                    },
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 60),
                  top: openCheck ? 0 : s.height,
                  left: 0,
                  child: CheckOut(
                    closeCheckout: () {
                      setState(() {
                        openCheck = !openCheck;
                      });
                    },
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 60),
                  top: openCategories ? 0 : s.height,
                  left: 0,
                  child: Categories(
                    closeCategories: () {
                      setState(() {
                        openCategories = !openCategories;
                      });
                    },
                    openCatProducts: () {
                      setState(() {
                        openCatProd = !openCatProd;
                      });
                    },
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 60),
                  top: openCatProd ? 0 : s.height,
                  left: 0,
                  child: CatagoryProducts(
                    closeCategoryProducts: () {
                      setState(() {
                        openCatProd = !openCatProd;
                      });
                    },
                  ),
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
                                setState(() {
                                  if (openCategories)
                                    openCategories = !openCategories;
                                  if (openCatProd) openCatProd = !openCatProd;
                                  if (openSearchItem)
                                    openSearchItem = !openSearchItem;
                                  if (openCheck) openCheck = !openCheck;
                                });
                                state.changePage(index);
                                pageController.animateToPage(
                                  state.page,
                                  duration: Duration(milliseconds: 240),
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
