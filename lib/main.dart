import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vocar_flip/routes/route.dart';

import 'views/home.dart';
import 'views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      // home: const SplashScreen(),
      onGenerateRoute: MyRoutes().onRoute,
    );
  }
}
