import 'package:flutter/material.dart';

class RecommendedFaculties extends StatefulWidget {
  @override
  _RecommendedFacultiesState createState() => _RecommendedFacultiesState();
}

class _RecommendedFacultiesState extends State<RecommendedFaculties> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black38,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              child: Text('Top Faculties'),
            ),
            // Faculties
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
