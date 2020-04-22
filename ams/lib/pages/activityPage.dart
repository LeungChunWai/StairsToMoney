import 'package:flutter/material.dart';
import 'package:ams/httpUtil.dart';
import 'package:ams/models/activity.dart';
import 'package:ams/widgets/activityItem.dart';
import 'package:dio/dio.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> with AutomaticKeepAliveClientMixin {
  Future<List<Activity>> _fetchactivityList() async {
    List<Activity> activityList = List<Activity>();
    Response<Map<String, dynamic>> response =
        await HttpUtil().get('/Activity');
    if (response.statusCode == 200) {
      Map<String, dynamic> result = response.data;
      for (dynamic data in result['data']['acts']) {
        Activity activityData = Activity.fromJson(data);
        activityList.add(activityData);
      }
    }
    return activityList;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: new Text(
          '活 动',
          style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: new Center(
        child: FutureBuilder(
          future: _fetchactivityList(),
          builder: (context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                else
                  return _createListView(context, snapshot);
            }
          },
        ),
      ),
    );
  }

  Widget _createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<Activity> activityList = snapshot.data;
    return ListView.builder(
      key: new PageStorageKey('activity-list'),
      itemCount: activityList.length,
      itemBuilder: (BuildContext context, int index) {
        return new ActivityItem(onPressed: () {}, activity: activityList[index]);
      },
    );
  }
}