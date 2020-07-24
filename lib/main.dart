import 'package:Ecat/routes/routes.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'results/index.dart';
import 'guru/index.dart';
import 'schools/index.dart';
import 'dashboard/index.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

// Below class is no more used as we follow stateful things
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Icon _userIcon = Icon(Icons.person_outline);
  final _items = [
    
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
    BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('events')),
    BottomNavigationBarItem(
        icon: Icon(Icons.save_alt), title: Text('downloads')),
    BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('Schools')),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
      ),
      home: Builder(
        builder: (context) => CustomScaffold(
          scaffold: Scaffold(
            appBar: AppBar(
              title: Container(
                child: Row(
                  children: <Widget>[
                    // Text containg Ecat
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Ecat'),
                    ),
                    Expanded(child: Container()),
                    Container(
                      child: Icon(Icons.search),
                      alignment: Alignment.bottomRight,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: IconButton(
                        icon: this._userIcon,
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
            ),
            body: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              // backgroundColor: Colors,
              // fixedColor: Colors.cyanAccent,
              items: _items,
              // items: Guest,
              type: BottomNavigationBarType.fixed,
            ),
          ),
          children: <Widget>[
            Home('0'),
            // Navigator.of(context).pushNamed('/'),
            Results('1'),
            GuruInit('2'),
            SchoolInit('3'),
            // ProfileBase(),
          ],

        
          // Called when one of the [items] is tapped.
          onItemTap: (index) {},
        ),
      ),
      onGenerateRoute: Router.generateRoute,
    );
  }

  void onClickProfile() {
    // Navigator.of(context)
    print('something');
  }
}
