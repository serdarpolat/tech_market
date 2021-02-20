import 'package:flutter/material.dart';
import 'package:tech_market/source/index.dart';

class AccountInformation extends StatelessWidget {
  final Function closeAccountInfo;
  final Function openEmailSetting;

  const AccountInformation(
      {Key key, this.closeAccountInfo, this.openEmailSetting})
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
                onPressed: closeAccountInfo,
              ),
            ),
            SizedBox(height: hh(16)),
            padding(
              child: Text(
                "Account Information",
                style: bold24(color: black),
              ),
            ),
            SizedBox(height: hh(64)),
            infoItem(
              title: "User Name",
              subtitle: "John Doe",
            ),
            infoItem(
              title: "Email",
              subtitle: "johndoe@email.com",
              ontap: openEmailSetting,
            ),
            infoItem(
              title: "Phone Number",
              subtitle: "+33 616 395 478",
            ),
            infoItem(
              title: "Password",
              subtitle: "********",
            ),
            infoItem(
              title: "Account Type",
              subtitle: "Premium",
            ),
          ],
        ),
      ),
    );
  }
}

Widget infoItem({String title, String subtitle, Function ontap}) => padding(
      child: Container(
        width: ww(343),
        height: hh(44),
        margin: EdgeInsets.only(bottom: hh(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: semi18(color: black),
                ),
                SizedBox(height: hh(4)),
                Text(
                  subtitle,
                  style: med16(color: mainBlue),
                ),
              ],
            ),
            TextButton(
              onPressed: ontap,
              child: Text(
                "Change",
                style: reg12(color: gray),
              ),
            ),
          ],
        ),
      ),
    );
