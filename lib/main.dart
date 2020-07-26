import 'package:Ecat/articles/index.dart';
import 'package:Ecat/routes/routes.dart';
import 'package:Ecat/staticConfig.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'results/index.dart';
import 'guru/index.dart';
import 'schools/index.dart';
import 'dashboard/index.dart';
import 'articles/article_data.dart';
import 'package:Ecat/articles/expandedArticle.dart';

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
  final _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
    BottomNavigationBarItem(
        icon: Icon(Icons.assignment), title: Text('Articles')),
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
            appBar: EcatAppBar(this.context, userName: "shyam"),
            body: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[],
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
            ArticlesInit(context),
            GuruInit('2'),
            SchoolInit('3'),
            // ProfileBase(),
          ],

          // Called when one of the [items] is tapped.
          onItemTap: (index) {
            onClickProfile();
          },
        ),
      ),
      onGenerateRoute: Router.generateRoute,
    );
  }

  void onClickProfile() {
    // Navigator.of(context)
    // print('something');
    print(articles[0].title);
  }
}
