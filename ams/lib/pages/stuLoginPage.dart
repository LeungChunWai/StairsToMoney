import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config.dart';


Dio dio = Dio();
 
  class StuLoginPage extends StatefulWidget {
    StuLoginPage({Key key}) : super(key: key);
 
    @override
    _StuLoginPageState createState() => _StuLoginPageState();
  }

  class _StuLoginPageState extends State<StuLoginPage> {

    String sno;
    String password;
    String login="登录";
 
    
    _login() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var response = await dio.post("http://${Config.BASE_URL}:3000/stuLogin", 
                      queryParameters: {"sNo": sno, "password": password});
      Utf8Decoder decode = new Utf8Decoder();
      if (response.statusCode == 200) {
        Map map = json.decode(decode.convert(response.data));
        print(map);
        String code = map['code'];
        if(code=="E19999"){
          setState(() {
            login=map['msg'];
          });
        }else{
          setState(() {
            login="登录成功";
          });      
        }  
      } else {
        setState(() {
          login = "网络错误";
        });
      }
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "请输入用户名"),
                onChanged: (String sNo) {
                  setState(() {
                    sno = sNo;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: "请输入密码"),
                obscureText: true,
                onChanged: (String passWord) {
                  setState(() {
                    password = passWord;
                  });
                },
              ),
              FlatButton(
                child: Text(login),
                onPressed: () => _login(),
              ),
            ],
          ),
        ),
      );
    }
  }
