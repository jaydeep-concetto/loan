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

class MerchantTransactionHistory extends StatefulWidget {
  @override
  MerchantTransactionHistoryState createState() =>
      MerchantTransactionHistoryState();
}

class MerchantTransactionHistoryState
    extends State<MerchantTransactionHistory> {
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
        title:  Container(
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
              ImageAssets.back,
              width: 33,
              height: 36,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
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
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),

                Text(
                  'Transaction History',
                  style: TextStyle(
                      color: ColorsHelper.themeColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
//            Account Name: 	SB Shops
//          Accout No:	 	46849234
                Row(
                  children: <Widget>[
                    Text(
                      'Account Name:',
                      style: TextStyle(
                          color: ColorsHelper.themeColor,
                          fontFamily: FontsHelper.titillium_web_regular,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'SB Shops',
                      style: TextStyle(
                          color: ColorsHelper.blueColor,
                          fontFamily: FontsHelper.titillium_web_regular,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Account No:',
                      style: TextStyle(
                          height: 0.7,
                          color: ColorsHelper.themeColor,
                          fontFamily: FontsHelper.titillium_web_regular,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '46849234',
                      style: TextStyle(
                          height: 0.7,
                          color: ColorsHelper.blueColor,
                          fontFamily: FontsHelper.titillium_web_regular,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Available Balance',
                  style: TextStyle(
                      color: ColorsHelper.themeColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '72,500.00',
                  style: TextStyle(
                      height: 0.7,
                      color: ColorsHelper.blueColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: new BoxDecoration(
                      color: ColorsHelper.lightGrayColor,
                      borderRadius: new BorderRadius.all(
                        Radius.circular(5.0),
                      )),
                  child: Container(
                    child: Text(
                      'Search transactions',
                      style: TextStyle(
                          color: ColorsHelper.blueColor,
                          fontFamily: FontsHelper.titillium_web_regular,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: getItemView,
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getItemView(BuildContext context, int index) {
    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Mr. Happy',
                  style: TextStyle(
                      color: ColorsHelper.blueColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),

                Text(
                  '-3500.00',
                  style: TextStyle(
                      color: ColorsHelper.blueColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '17 May 2019',
                  style: TextStyle(
                      color: ColorsHelper.darkGrayColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),

                Text(
                  '72,500.00',
                  style: TextStyle(
                      color: ColorsHelper.darkGrayColor,
                      fontFamily: FontsHelper.titillium_web_regular,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(height: 2,color: ColorsHelper.lightGrayColor,)
          ],
        ));
  }
}
