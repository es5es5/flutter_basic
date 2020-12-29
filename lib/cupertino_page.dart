import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluuter_basic/main.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Hi'),
      ),
      body: Column(
        children: <Widget>[
          CupertinoButton(child: Text('Hi Cupertino')),
          CupertinoSwitch(
              value: true,
              onChanged: (bool value) {
                value = _switch;
                setState(() {
                  _switch = value;
                });
              }),
          RaisedButton(child: Text('Go'), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HelloPage("Return")));
          }),
        ],
      ),
    );
  }
}
