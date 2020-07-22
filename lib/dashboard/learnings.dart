import 'package:flutter/material.dart';
// import 'learning_Deep/recommendedSubjects.dart';

class Learnings extends StatefulWidget {
  @override
  _LearningsState createState() => _LearningsState();
}

class _LearningsState extends State<Learnings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(child: Text('Learnings')),
          // Below is for recommended subjects
          Container(
              height: 44.0,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,

                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
                  ),
                ],
              )),
          // research by Areas,
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // Research by institues.
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 200,
                  width: 400,
                  color: Colors.orangeAccent,
                ),
                Container(
                  height: 200,
                  width: 400,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
