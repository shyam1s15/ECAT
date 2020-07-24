import 'package:flutter/material.dart';

class EcatAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        child: Row(
          children: <Widget>[
            // Text containg Ecat
            Container(
              alignment: Alignment.topLeft,
              child: Text('Ecat'),
            ),
          ],
        ),
      ),
    );
  }
}