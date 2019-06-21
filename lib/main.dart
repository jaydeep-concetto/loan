import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan/api/api_repos.dart';
import 'package:loan/api/http_api.dart';
import 'package:loan/data_manager_inherited_widget.dart';
import 'package:loan/helpers/font_constant.dart';
import 'dart:io';
import 'package:loan/pages/borrower_dashboard.dart';
import 'package:loan/helpers/colors.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
    return DataManagerInheritedWidget(
      apiClient: HttpClient(),
      apiRepos: APIRepos(),
      child: new MaterialApp(
        darkTheme: ThemeData(primaryColor: ColorsHelper.themeColor),
        debugShowCheckedModeBanner: false,
        home: BorrowerDashboard(),
        theme: new ThemeData(
          primaryColor:  ColorsHelper.themeColor,
          secondaryHeaderColor: ColorsHelper.themeColor,
          accentColor: ColorsHelper.themeColor,
          splashColor: ColorsHelper.themeColor,
          fontFamily: FontsHelper.raleway_regular,
        ),
      ),
    );
  }


}