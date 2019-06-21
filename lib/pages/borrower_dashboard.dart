import 'package:flutter/material.dart';
import 'package:loan/helpers/image_constant.dart';
import 'package:loan/helpers/colors.dart';
import 'package:loan/helpers/font_constant.dart';
import 'package:loan/helpers/strings.dart';
import 'dart:convert';
import 'package:loan/data_manager_inherited_widget.dart';
import 'package:loan/helpers/sharepreference_helper.dart';
import 'package:loan/helpers/utility.dart';
import 'package:loan/helpers/validator.dart';
import 'package:loan/pages/merchant_transaction_history.dart';

class BorrowerDashboard extends StatefulWidget {
  @override
  BorrowerDashboardState createState() => BorrowerDashboardState();
}

class BorrowerDashboardState extends State<BorrowerDashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          child: Image.asset(
            ImageAssets.main_icon,
            width: 40,
            height: 40,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: Image.asset(
              ImageAssets.notification,
              width: 33,
              height: 36,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(

            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: Image.asset(
              ImageAssets.menu,
              width: 33.0,
              height: 34.0,
              fit: BoxFit.contain,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  ImageAssets.profile_pic,
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
                Text(
                  'Hello Mrs. Bharati',
                  style: TextStyle(
                      color: ColorsHelper.themeColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 125,
                      child: Text(
                        'Loan Amount:',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontsHelper.titillium_regular,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Text(
                        '50,000',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontsHelper.titillium_regular,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 10,
                        color: ColorsHelper.greenColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 125,
                      child: Text(
                        'Available Balance:',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontsHelper.titillium_regular,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Text(
                        '35,000',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontsHelper.titillium_regular,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 10,
                        color: ColorsHelper.redColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 10,
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Image.asset(ImageAssets.apply_loan,alignment: Alignment.bottomRight,),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Image.asset(ImageAssets.purchase_goods,alignment: Alignment.bottomLeft,),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Image.asset(ImageAssets.pay_icon,alignment: Alignment.topRight,),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Image.asset(ImageAssets.transaction_history,alignment: Alignment.topLeft,),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MerchantTransactionHistory()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
