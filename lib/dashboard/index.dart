import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final _title;
  @override
  _HomeState createState() => _HomeState();
  const Home(this._title) : assert(_title != null); 
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Welcome to home ' + widget._title),);
  }
}
