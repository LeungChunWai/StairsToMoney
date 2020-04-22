import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config.dart';


Dio dio = Dio();
 
  class OgnLoginPage extends StatefulWidget {
    OgnLoginPage({Key key}) : super(key: key);
 
    @override
    _OgnLoginPageState createState() => _OgnLoginPageState();
  }

  class _OgnLoginPageState extends State<OgnLoginPage> {

    String ono;
    String password;
    String login="登录";
 
    
    _login() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var response = await dio.post("${Config.BASE_URL}:3000/ognLogin", queryParameters: {"oNo": ono, "password": password});
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
          //记录登录信息
          prefs.setString('ono', ono);      
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
                onChanged: (String oNo) {
                  setState(() {
                    ono = oNo;
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
