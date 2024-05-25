import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_9.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';

class PariwisataSlide8 extends StatelessWidget {
  const PariwisataSlide8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: PariwisataSlide9()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/pariwisata/8.jpg',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
