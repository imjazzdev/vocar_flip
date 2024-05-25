import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import 'slide_2.dart';

class TKBSlide1 extends StatelessWidget {
  const TKBSlide1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            //
          } else if (dis.delta.dx < 0) {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: const TKBSlide2()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/tkb/1.jpg',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
