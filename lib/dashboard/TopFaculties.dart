import 'package:flutter/material.dart';

class RecommendedFaculties extends StatefulWidget {
  @override
  _RecommendedFacultiesState createState() => _RecommendedFacultiesState();
}

class _RecommendedFacultiesState extends State<RecommendedFaculties> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.black38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Text('Top Faculties'),
            width: 200,
          ),
          // Faculties
          Container(
            color: Colors.amberAccent,
            width: 200,
          ),
          Container(
            color: Colors.cyan,
            width: 200,
          ),
          Container(
            color: Colors.deepOrangeAccent,
            width: 200,
          ),
          Container(
            color: Colors.deepPurpleAccent,
            width: 200,
          ),
          Container(
            color: Colors.deepPurple[300],
            width: 200,
          ),
        ],
      ),
    );
  }
}
