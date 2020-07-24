import 'package:Ecat/dashboard/TopFaculties.dart';
import 'package:Ecat/dashboard/learnings.dart';
import 'package:Ecat/dashboard/recentSchools.dart';
import 'package:Ecat/dashboard/topBar.dart';
import 'package:flutter/material.dart';
// import 'package:Ecat/dashboard/*.dart';
class Home extends StatefulWidget {
  final _title;
  @override
  _HomeState createState() => _HomeState();
  const Home(this._title) : assert(_title != null);
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          TopBar(),
          Learnings(),
          VistedRecommendedSchools(),
          RecommendedFaculties(),
        ],
      ),
    );
  }
}
