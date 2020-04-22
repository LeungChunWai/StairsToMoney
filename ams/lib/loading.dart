import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {

  @override
  void initState(){
    super.initState();
    new Future.delayed(Duration(seconds:3),(){
      print("ams正在运行...");
      Navigator.of(context).pushReplacementNamed("./pages/indexPage.dart");
    });
  }
  
  @override
Widget build(BuildContext context) {
  return new Container(
    child:Image.asset("images/loading.jpg"),
  );
}
}

