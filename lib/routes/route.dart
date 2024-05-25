import 'package:flutter/material.dart';
import 'package:vocar_flip/views/home.dart';
import 'package:vocar_flip/views/k3lh/slide_1.dart';
import 'package:vocar_flip/views/pariwisata/slide_1.dart';
import 'package:vocar_flip/views/splash.dart';
import 'package:vocar_flip/views/tkb/slide_1.dart';

class MyRoutes {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case '/k3lh':
        return MaterialPageRoute(
          builder: (context) => K3lhSlide1(),
        );
      case '/tkb':
        return MaterialPageRoute(
          builder: (context) => TKBSlide1(),
        );
      case '/pariwisata':
        return MaterialPageRoute(
          builder: (context) => PariwisataSlide1(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
    }
  }
}
