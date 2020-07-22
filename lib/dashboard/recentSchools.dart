import 'package:flutter/material.dart';

class VistedRecommendedSchools extends StatefulWidget {
  @override
  _VistedRecommendedSchoolsState createState() =>
      _VistedRecommendedSchoolsState();
}

class _VistedRecommendedSchoolsState extends State<VistedRecommendedSchools> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          // Below code is for visited schools or recommended schools
          Center(
            child: Text('Recent School'),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 200,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  width: 200,
                  color: Colors.pinkAccent,
                ),
                Container(
                  width: 200,
                  color: Colors.yellow,
                ),
                Container(
                  width: 200,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 200,
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
          Center(
            child: Text('Graduated from schools'),
          ),
          // Below code is for Graduated from school which is past of x,y,z student.
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 200,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  width: 200,
                  color: Colors.pinkAccent,
                ),
                Container(
                  width: 200,
                  color: Colors.yellow,
                ),
                Container(
                  width: 200,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 200,
                  color: Colors.cyan,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
