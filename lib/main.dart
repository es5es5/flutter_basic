import 'package:flutter/material.dart';
import 'package:flutter_basic/cupertino_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // brightness:Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFFf79999),
        accentColor: Color(0xFFf79999),
        // canvasColor: Color(0xFFffffff),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: CupertinoPage(),
      home: HelloPage('Hello World'),
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title) : super();

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello world';
  int _conter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _changeMessage,
        ),
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_message, style: TextStyle(fontSize: 30)),
            Text('$_conter', style: TextStyle(fontSize: 30)),
            RaisedButton(child: Text('Go'), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPage()));
            })
          ],
        )));
  }

  void _changeMessage() {
    setState(() {
      _message = 'Hi Louis!';
      _conter++;
    });
  }
}
