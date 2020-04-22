import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => new _EditPageState();
}

class _EditPageState extends State<EditPage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  String name;
  String time;
  String place;
  String nature;
  String content;

  void _forSubmitted() {
    var _form = _formKey.currentState;

    if (_form.validate()) {
      _form.save();
      // print(name);
      // print(time);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text('编辑活动'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _forSubmitted,
        child: new Text('提交'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Form(
          key: _formKey,
          child: new Column(
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: '活动名',
                ),
               onChanged: (String userName) {
                  setState(() {
                    name = userName;
                  });
                },
              ),

              new TextFormField(
                decoration: new InputDecoration(
                  labelText: '活动时间',
                ),
                onChanged: (String time) {
                  setState(() {
                    time = time;
                  });
                },
              ),

              new TextFormField(
                decoration: new InputDecoration(
                  labelText: '活动地点',
                ),
                onChanged: (String place) {
                  setState(() {
                    place = place;
                  });
                },
              ),

              new TextFormField(
                decoration: new InputDecoration(
                  labelText: '活动性质',
                ),
                onChanged: (String nature) {
                  setState(() {
                    nature = nature;
                  });
                },
              ),

              new TextFormField(
                decoration: new InputDecoration(
                  labelText: '活动内容',
                ),
                onChanged: (String content) {
                  setState(() {
                    content = content;
                  });
                },
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text('提交'),
                          color: Colors.pink,
                          textColor: Colors.white,
                          onPressed:this._forSubmitted,
                      )
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}