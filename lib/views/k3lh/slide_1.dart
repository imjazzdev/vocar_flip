import 'package:flutter/material.dart';
import 'package:vocar_flip/views/k3lh/slide_2.dart';
import 'package:page_transition/page_transition.dart';

class K3lhSlide1 extends StatelessWidget {
  const K3lhSlide1({super.key});

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
                    child: K3lhSlide2()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/k3lh/1.jpg',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
