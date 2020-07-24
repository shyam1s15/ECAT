import 'package:flutter/material.dart';

class ProfileBase extends StatefulWidget {
  @override
  _ProfileBaseState createState() => _ProfileBaseState();
}

class _ProfileBaseState extends State<ProfileBase> {
  Icon _userIcon = Icon(Icons.person_outline);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
      ),
      home: Builder(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Container(
              child: Row(
                children: <Widget>[
                  // close Icon
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.pop(context)),
                  ),
                  // Text containg Ecat
                  Container(
                    alignment: Alignment.center,
                    child: Text('Account'),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                // Text('Hellow everyone'),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://res.cloudinary.com/dpccmon9r/image/upload/v1594902375/parth_dryk9c.png'),
                  ),

                ),
                Center(child: Text('Bhuro Natho', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),)
              ],
            ),
          ),
        ),

        // Called when one of the [items] is tapped.
      ),
    );
  }
}
