import 'package:Ecat/routes/routes.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'results/index.dart';
import 'guru/index.dart';
import 'schools/index.dart';
import 'dashboard/index.dart';

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
  int _currentBottomNavIndex = 0;
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
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
      ),
      home: Builder(
        builder: (context) => CustomScaffold(
          scaffold: Scaffold(
            appBar: AppBar(
              title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Welcome Self Learner'),
                    Icon(Icons.ac_unit),
                    FloatingActionButton(
                      backgroundColor: Colors.orange,
                      onPressed: () {},
                      child: Icon(Icons.ac_unit),
                    )
                  ],
                ),
              ),
            ),
            body: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  // TopBar(),
                  // Learnings(),
                  // VistedRecommendedSchools(),
                  // RecommendedFaculties(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: _items,
              type: BottomNavigationBarType.fixed,
            ),
          ),
          children: <Widget>[
            Home('0'),
            Results('1'),
            GuruInit('2'),
            SchoolInit('3'),
          ],

          // Called when one of the [items] is tapped.
          onItemTap: (index) {},
        ),
      ),
      onGenerateRoute: Router.generateRoute,
    );
  }
}
