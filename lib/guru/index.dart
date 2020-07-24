import 'package:flutter/material.dart';

class GuruInit extends StatefulWidget {
  final _title;
  @override
  _GuruInitState createState() => _GuruInitState();
  const GuruInit(this._title) : assert(_title != null);
}

class _GuruInitState extends State<GuruInit> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Welcome to our gurus ' + widget._title),);
  }
}
