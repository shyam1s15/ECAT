import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  final _title;
  @override
  _ResultsState createState() => _ResultsState();
  const Results(this._title) : assert(_title != null);
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Welcome to results' + widget._title),);
  }
}
