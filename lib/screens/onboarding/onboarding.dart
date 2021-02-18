import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';
import 'package:tech_market/source/widgets.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainBlue,
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: ctrl,
              itemBuilder: (context, index) {
                return Onboard(
                  model: pages[index],
                  ontap: () {
                    index == 2
                        ? pushReplace(context, page: Connection())
                        : ctrl.animateToPage(
                            index + 1,
                            duration: Duration(milliseconds: 360),
                            curve: Curves.easeInOut,
                          );
                  },
                );
              },
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class Dots extends StatelessWidget {
  final bool isActive;

  const Dots({Key key, this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? hh(7) : hh(5),
      height: isActive ? hh(7) : hh(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: white.withOpacity(isActive ? 1 : 0.32),
      ),
    );
  }
}

class OnboardModel {
  final int idx;
  final String img;
  final String title;

  OnboardModel(this.idx, this.img, this.title);
}

List<OnboardModel> pages = [
  OnboardModel(
    0,
    "world",
    "The best tech market",
  ),
  OnboardModel(
    1,
    "imac",
    "A lot of exclusives",
  ),
  OnboardModel(
    2,
    "percent",
    "Sales all the time",
  ),
];

class Onboard extends StatelessWidget {
  final OnboardModel model;
  final Function ontap;
  const Onboard({
    Key key,
    this.model,
    this.ontap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            "assets/img/images/${model.img}.png",
            height: hh(267),
          ),
          SizedBox(height: hh(120)),
          Text(
            model.title,
            style: bold24(color: white),
          ),
          SizedBox(height: hh(40)),
          Container(
            width: ww(34),
            height: hh(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
                return Dots(
                  isActive: model.idx == index,
                );
              }),
            ),
          ),
          SizedBox(height: hh(24)),
          GestureDetector(
            onTap: ontap,
            child: Container(
              padding: EdgeInsets.all(hh(16)),
              child: Text(
                "Next",
                style: semi18(color: white),
              ),
            ),
          ),
          SizedBox(height: hh(63)),
        ],
      ),
    );
  }
}
