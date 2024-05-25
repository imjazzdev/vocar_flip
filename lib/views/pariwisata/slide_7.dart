import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_8.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';

class PariwisataSlide7 extends StatelessWidget {
  const PariwisataSlide7({super.key});

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
                    child: PariwisataSlide8()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/pariwisata/7.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(
                        'https://drive.google.com/file/d/1wlv621_fYoz54b56RUVO-4xwFDQiPcha/view?usp=drive_link'));
                  },
                  child: Container(
                    height: 180,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // color: Colors.blue.withOpacity(0.5),
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
