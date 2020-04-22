import 'package:ams/models/activity.dart';
import 'package:ams/pages/ognLoginPage.dart';
import 'package:ams/pages/stuLoginPage.dart';
import 'package:flutter/material.dart';
import './pages/indexPage.dart';
import './pages/activityPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '活动管理系统',
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primaryColor: Colors.pink
        ),
        routes: {
          /// '/'是特殊地址，第一个页面
          "/": (context) => IndexPage(),
          "/Activity":(context) => ActivityPage(),
          "/stuLogin":(context) => StuLoginPage(),
          "/ognLogin":(context) => OgnLoginPage(),
        },
        //home: IndexPage(),
      )
    );
  }
}




