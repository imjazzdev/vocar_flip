import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_13.dart';

class TKBSlide12 extends StatelessWidget {
  const TKBSlide12({super.key});

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
                    child: TKBSlide13()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/tkb/12.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://bit.ly/PostTest_TKB'));
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
