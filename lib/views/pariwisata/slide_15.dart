import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/home.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';

class PariwisataSlide15 extends StatelessWidget {
  const PariwisataSlide15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/halaman-exit.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
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
                  radius: 100,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
