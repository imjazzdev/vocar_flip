import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/k3lh/slide_19.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';

import 'slide_15.dart';

class K3lhSlide18 extends StatelessWidget {
  const K3lhSlide18({super.key});

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
                    child: K3lhSlide19()));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/image/k3lh/18.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://drive.google.com/file/d/19hwx6fSYEE1UyGiLC-n-9zVO-TIljPhA/view?usp=drive_link'));
                    },
                    child: Container(
                      // color: Colors.blue,
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://drive.google.com/file/d/1FYPCeaOOCp2C61hdVOyS68_YLZFO3jkp/view?usp=drive_link'));
                    },
                    child: Container(
                      //color: Colors.blue.withOpacity(0.7),
                      height: 180,
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
