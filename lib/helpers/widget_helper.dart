

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:loan/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:loan/helpers/image_constant.dart';
import 'package:loan/helpers/font_constant.dart';
import 'package:intl/intl.dart';

class WidgetHelper {
//  static progressBarShow(
//      {BuildContext context,
//      bool isDismissible = true,
//      AnimationController animationController}) {
//    showDialog(
//      context: context,
//      barrierDismissible: isDismissible,
//      builder: (_) => new WillPopScope(
//          child: new SimpleDialog(
//            contentPadding: EdgeInsets.all(10.0),
//            shape: CircleBorder(),
//            backgroundColor: Colors.transparent,
//            children: [
//              new Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  new AnimatedBuilder(
//                    animation: animationController,
//                    child: new Container(
//                      height: 80.0,
//                      width: 80.0,
//                      child: new Image.asset(ImageAssets.loader),
//                    ),
//                    builder: (BuildContext context, Widget _widget) {
//                      return new Transform.rotate(
//                        angle: animationController.value * 6.3,
//                        child: _widget,
//                      );
//                    },
//                  ),
//                ],
//              ),
//            ],
//          ),
//          onWillPop: () {
//            return Future.value(isDismissible);
//          }),
//    );
//  }

  static progressBarShow({BuildContext context, bool isDismissible = true}) {
    showDialog(
      context: context,
      barrierDismissible: isDismissible,
      builder: (_) => new WillPopScope(
          child: new SimpleDialog(
            contentPadding: EdgeInsets.all(10.0),
            shape: CircleBorder(),
            backgroundColor: ColorsHelper.themeColor,
            children: [
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
          onWillPop: () {
            return Future.value(isDismissible);
          }),
    );
  }

  static CustomTextField(
      {String save(String val),
        String hintText,
        int maxLine = 1,
        bool enable = true,
        String errorText,
        TextEditingController controller,TextCapitalization textCapitalization = TextCapitalization.none}) {
    return Expanded(
      child: Container(
        child: TextField(
            textCapitalization: textCapitalization,
            enabled: enable,
            controller: controller,
            maxLines: maxLine,
            style: TextStyle(
              color: ColorsHelper.themeColor,
              fontFamily: FontsHelper.raleway_regular,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: ColorsHelper.themeColor,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorsHelper.lightGrayColor, width: 0.5)),
              contentPadding: EdgeInsets.all(15.0),
              labelStyle: TextStyle(color: ColorsHelper.themeColor),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorsHelper.themeColor),
              ),
              hintText: hintText,
              errorText: errorText,
            ),
            onChanged: save),
      ),
    );
  }

  static CustomDropDown(
      {save(dynamic val),
        String hintText,
        List<dynamic> arr,
        dynamic value,
        String key}) {
    if (arr.length > 0 && value == '') {
      value = arr[0];
    }
    return Expanded(
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: ColorsHelper.lightGrayColor, width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<dynamic>(
            hint: Text(hintText),
            isExpanded: true,
            value: value,
            onChanged: save,
            items: arr.map((value) {
              return new DropdownMenuItem<dynamic>(
                value: value,
                child: Text(
                  value[key],
                  style: TextStyle(
                    color: ColorsHelper.themeColor,
                    fontFamily: FontsHelper.raleway_regular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  static selectBirthDate({
    BuildContext context,
    DateTime defaultDate,
    Function save(String val),
  }) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: defaultDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != defaultDate) {
      save(DateFormat('dd-MM-yyyy').format(picked));
    }
  }

  static getDivider() {
    return Container(
      height: 2,
      color: ColorsHelper.dividerColor,
    );
  }

  static getDividerArr(int count, List<int> blank) {
    List<Widget> arrWidget = [];
    for (int i = 0; i < count; i++) {
      arrWidget.add(Container(
        height: 2,
        color: (blank.contains(i))
            ? Colors.transparent
            : ColorsHelper.dividerColor,
      ));
    }
    return arrWidget;
  }

  static tableTextField(
      {@required BuildContext context,
        String save(String val),
        String hintText,
        int maxLine = 1,
        bool enable = true,bool isBottomBorder = true,
        String errorText,
        TextEditingController controller,
        Alignment alignment = Alignment.center,TextAlign textAlign = TextAlign.center,
        bool isLeftBorder = true,
        double width = 0,
        EdgeInsets padding,
        FontWeight fontWeight = FontWeight.w600}) {
    padding = (padding == null) ? EdgeInsets.only(left: 5,right: 5) : padding;
    if (width == 0) {
      return Expanded(
          child: Container(
            padding: padding,
            child: Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent),
              child: TextField(
                enabled: enable,
                textAlign: textAlign,
                controller: controller,
                maxLines: maxLine,
                style: TextStyle(
                  color: ColorsHelper.themeColor,
                  fontFamily: FontsHelper.raleway_regular,
                  fontWeight: FontWeight.w500,
                ),
                cursorColor: ColorsHelper.themeColor,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: ColorsHelper.dividerColor,
                  width: isLeftBorder ? 2 : 0,
                ),bottom: BorderSide(
                color: ColorsHelper.dividerColor,
                width: isBottomBorder ? 2 : 0,
              ),
              ),
            ),
            alignment: alignment,
          ));
    } else {
      return Expanded(
          child: Container(
            width: width,
            padding: padding,
            child: Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent),
              child: TextField(
                enabled: enable,
                textAlign: textAlign,
                controller: controller,
                maxLines: maxLine,
                style: TextStyle(
                  color: ColorsHelper.themeColor,
                  fontFamily: FontsHelper.raleway_regular,
                  fontWeight: FontWeight.w500,
                ),
                cursorColor: ColorsHelper.themeColor,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: ColorsHelper.dividerColor,
                  width: isLeftBorder ? 2 : 0,
                ),bottom: BorderSide(
                color: ColorsHelper.dividerColor,
                width: isBottomBorder ? 2 : 0,
              ),
              ),
            ),
            alignment: alignment,
          ));
    }
  }

  static tableText(
      {String str,
        Alignment alignment = Alignment.center,
        bool isLeftBorder = true,bool isBottomBorder = true,
        double width = 0,
        EdgeInsets padding,
        FontWeight fontWeight = FontWeight.w600}) {
    if (width == 0) {
      return Expanded(
          child: Container(
            padding: padding,
            child: Text(
              str,
              style: TextStyle(
                fontFamily: FontsHelper.raleway_semibold,
                fontWeight: fontWeight,
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: ColorsHelper.dividerColor,
                  width: isLeftBorder ? 2 : 0,
                ),bottom: BorderSide(
                color: ColorsHelper.dividerColor,
                width: isBottomBorder ? 2 : 0,
              ),
              ),
            ),
            alignment: alignment,
          ));
    } else {
      return Container(
        width: width,
        padding: padding,
        child: Text(
          str,
          style: TextStyle(
            fontFamily: FontsHelper.raleway_semibold,
            fontWeight: fontWeight,
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: ColorsHelper.dividerColor,
              width: isLeftBorder ? 2 : 0,
            ),bottom: BorderSide(
            color: ColorsHelper.dividerColor,
            width: isBottomBorder ? 2 : 0,
          ),
          ),
        ),
        alignment: alignment,
      );
    }
  }

}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
