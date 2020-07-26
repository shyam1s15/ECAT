import 'package:Ecat/guru/index.dart';
import 'package:Ecat/main.dart';
import 'package:Ecat/profile/index.dart';
import 'package:Ecat/results/index.dart';
import 'package:Ecat/schools/index.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // below is our data, which helps directly using it
    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/results':
        return MaterialPageRoute(builder: (_) => Results('1'));
      case '/guru':
        return MaterialPageRoute(builder: (_) => GuruInit('2'));
      case '/schools':
        return MaterialPageRoute(builder: (_) => SchoolInit('3'));
      case '/profile':
        // return MaterialPageRoute(builder: (context) => ProfileBase());
        return PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.topRight,
                child: child,
              );
            },
            pageBuilder: (context, animation, secondaryAnimation) {
              return ProfileBase();
            });
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
