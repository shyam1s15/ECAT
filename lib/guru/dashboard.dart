import 'package:flutter/material.dart';

class GuruInit extends StatefulWidget {
  @override
  _GuruInitState createState() => _GuruInitState();
}

class _GuruInitState extends State<GuruInit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GURU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
