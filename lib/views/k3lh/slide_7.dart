import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:url_launcher/url_launcher.dart';

import 'slide_8.dart';

class K3lhSlide7 extends StatelessWidget {
  const K3lhSlide7({super.key});

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
                    child: K3lhSlide8()));
          }
        },
        child: SafeArea(
            child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/k3lh/7.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse('https://bit.ly/PreTest_TKB'));
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            // color: Colors.amber,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        InkWell(
                          onTap: () {
                            launchUrl(
                                Uri.parse('https://bit.ly/PreTest_Kuliner'));
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            // color: Colors.amber,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
