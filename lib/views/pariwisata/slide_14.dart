import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/pariwisata/slide_2.dart';
import 'package:vocar_flip/views/pariwisata/slide_15.dart';

class PariwisataSlide14 extends StatelessWidget {
  const PariwisataSlide14({super.key});

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
                    child: PariwisataSlide15()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/pariwisata/14.jpg',
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
