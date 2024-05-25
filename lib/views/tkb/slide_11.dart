import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_12.dart';

class TKBSlide11 extends StatelessWidget {
  const TKBSlide11({super.key});

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
                    child: TKBSlide12()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/tkb/11.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(
                        'https://drive.google.com/file/d/1MXWX6ch5SkfbE-bgb8IIeKkSPJESk3ei/view?usp=drive_link'));
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
