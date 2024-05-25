import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/home.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_10.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';

class PariwisataSlide9 extends StatelessWidget {
  const PariwisataSlide9({super.key});

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
                    child: PariwisataSlide10()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/pariwisata/9.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 150,
              right: 0,
              child: InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (route) => false);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 60,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
