import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vocar_flip/views/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  int _start = 2;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Image.asset(
              'assets/image/splash.png',
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: SizedBox(
                height: 70, width: 70, child: CircularProgressIndicator()),
          )
        ],
      )),
    );
  }
}
