import 'package:Ecat/routes/routes.dart';
import 'package:flutter/material.dart';
import 'dashboard/footer.dart';
import 'dashboard/topBar.dart';
import 'dashboard/learnings.dart';
import 'dashboard/recentSchools.dart';
import 'dashboard/TopFaculties.dart';
import 'results/index.dart';
import 'guru/dashboard.dart';
import 'schools/index.dart';

void main() {
  runApp(Dashboard());
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
      home: Scaffold(
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
          child: Column(
            children: <Widget>[
              TopBar(),
              Learnings(),
              VistedRecommendedSchools(),
              // RecommendedFaculties(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.account_balance),
        ),
        // bottomNavigationBar: BottomAppBar(
        //   child: Footer(),
        // ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplay), title: Text('Results')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle),
                  title: Text('GURU')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), title: Text('Schools')),
            ]),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
      ),
      home: Scaffold(
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
              TopBar(),
              Learnings(),
              VistedRecommendedSchools(),
              RecommendedFaculties(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.account_balance),
        ),
        // bottomNavigationBar: BottomAppBar(
        //   child: Footer(),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentBottomNavIndex,
          backgroundColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplay), title: Text('Results')),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), title: Text('GURU')),
            BottomNavigationBarItem(
                icon: Icon(Icons.school), title: Text('Schools')),
          ],
          onTap: (index) {
            setState(() {
              _currentBottomNavIndex = index;
              // index==0 ? 
            });
          },
        ),
      ),
      
      onGenerateRoute: Router.generateRoute,
      initialRoute: '/',
    );
  }
}
