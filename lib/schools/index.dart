import 'package:flutter/material.dart';

class SchoolInit extends StatefulWidget {
  final String title;

  @override
  _SchoolInitState createState() => _SchoolInitState();
  const SchoolInit(this.title) : assert(title != null);
  // SchoolInit({title});
}

class _SchoolInitState extends State<SchoolInit> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Hellow world ' + widget.title));
  }
}
