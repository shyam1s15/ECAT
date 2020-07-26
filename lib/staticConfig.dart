import 'package:flutter/material.dart';
import 'package:two_letter_icon/two_letter_icon.dart';

AppBar EcatAppBar(context, {title = "Ecat", appBarColor = Colors.red, userName=0}) {
  dynamic _userIcon = userName==0 ? Icon(Icons.person_outline) : TwoLetterIcon(userName[0]);

  return AppBar(
    title: Container(
      child: Row(
        children: <Widget>[
          // Text containg Ecat

          Container(
            alignment: Alignment.topLeft,
            child: Text(title),
          ),
          Expanded(child: Container()),
          Container(
            child: Icon(Icons.search),
            alignment: Alignment.bottomRight,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              // icon: _userIcon,
              iconSize: 40.0,
              icon: _userIcon,
              // onPressed: () => onClickProfile()
              onPressed: () {
                Navigator.of(context).pushNamed('/profile');
              },
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    ),
  );
}
