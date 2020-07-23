import 'package:Ecat/guru/dashboard.dart';
import 'package:Ecat/main.dart';
import 'package:Ecat/results/index.dart';
import 'package:Ecat/schools/index.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // below is our data, which helps directly using it
    final args = settings.arguments;
    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/results':
        return MaterialPageRoute(builder: (_) => Results());
      case '/guru':
        return MaterialPageRoute(builder: (_) => GuruInit());
      case '/schools':
        return MaterialPageRoute(builder: (_) => schoolInit());
      
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
