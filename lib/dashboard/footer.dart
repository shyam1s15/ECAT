import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text('My fav'),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text('Results'),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text('Guru'),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text('Schools'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        
    );
  }
}
