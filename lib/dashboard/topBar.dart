import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              child: Container(child: Text('Learn ArtWork')),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              child: Container(child: Text('Be Creative')),
            ),
          ),
        ],
      ),
    );
  }
}
