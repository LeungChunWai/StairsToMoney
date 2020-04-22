import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// class IndexPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('活动管理')),
//       body: Center(
//         child: Text('活动')),
//     );
//   }
// }

class IndexPage extends StatelessWidget {
  ///此处context为MaterialApp下的context
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("第一个页面"),),
      body: Container(
        child: new Column(
          children: <Widget>[
            RaisedButton(onPressed: () async {
            ///获取第二个页面返回的数据 相当于Activity 的onActivityResult
            var pushNamed = await Navigator.pushNamed(context, "/Activity");
            debugPrint(pushNamed);
            }, child: Text("活动"),),

            RaisedButton(onPressed: () async {
            ///获取第二个页面返回的数据 相当于Activity 的onActivityResult
            var pushNamed = await Navigator.pushNamed(context, "/stuLogin");
            debugPrint(pushNamed);
            }, child: Text("学生登录"),),

            RaisedButton(onPressed: () async {
            ///获取第二个页面返回的数据 相当于Activity 的onActivityResult
            var pushNamed = await Navigator.pushNamed(context, "/ognLogin");
            debugPrint(pushNamed);
            }, child: Text("主办方登录"),),
          ],
        ),
      )
      
      
      
      
    );
  }
}





