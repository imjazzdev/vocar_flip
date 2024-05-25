import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/pariwisata/slide_13.dart';
import 'package:vocar_flip/views/pariwisata/slide_2.dart';

class PariwisataSlide12 extends StatelessWidget {
  const PariwisataSlide12({super.key});

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
                    child: PariwisataSlide13()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/pariwisata/12.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 220,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(
                        'https://drive.google.com/file/d/1WNmNb6JREDWh3S2TyLFR7P6DCPni0vhX/view?usp=drive_link'));
                  },
                  child: Container(
                    height: 200,
                    // color: Colors.blue.withOpacity(0.5),
                    margin: EdgeInsets.only(left: 20, right: 20),
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
