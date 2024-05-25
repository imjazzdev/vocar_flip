import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/pariwisata/slide_14.dart';
import 'package:vocar_flip/views/pariwisata/slide_2.dart';

class PariwisataSlide13 extends StatelessWidget {
  const PariwisataSlide13({super.key});

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
                    child: PariwisataSlide14()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/pariwisata/13.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://bit.ly/PostTest_Kuliner'));
                  },
                  child: Container(
                    height: 150,
                    margin: EdgeInsets.only(left: 50, right: 30),
                    // color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
