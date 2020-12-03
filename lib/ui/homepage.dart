import 'package:flutter/material.dart';
import 'package:kezza_weather/ui/weather.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Weather(),
    );
  }
}
