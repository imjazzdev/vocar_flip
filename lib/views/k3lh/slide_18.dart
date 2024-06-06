import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vocar_flip/views/k3lh/slide_19.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:video_player/video_player.dart';

import 'slide_15.dart';

class K3lhSlide18 extends StatefulWidget {
  const K3lhSlide18({super.key});

  @override
  State<K3lhSlide18> createState() => _K3lhSlide18State();
}

class _K3lhSlide18State extends State<K3lhSlide18> {
  late FlickManager flickManager;
  late FlickManager flickManager2;

  @override
  void dispose() {
    // TODO: implement dispose
    flickManager.dispose();
    flickManager2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset('assets/video/k3lh-umum12-1.mp4'));
    flickManager2 = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset('assets/video/k3lh-umum12-2.mp4'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            flickManager.dispose();
            flickManager2.dispose();
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
                      // launchUrl(Uri.parse(
                      //     'https://drive.google.com/file/d/19hwx6fSYEE1UyGiLC-n-9zVO-TIljPhA/view?usp=drive_link'));
                      showDialog(
                        context: context,
                        builder: (context) => Center(
                          child: Container(
                            height: 200,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.white,
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child:
                                  FlickVideoPlayer(flickManager: flickManager),
                            ),
                          ),
                        ),
                      );
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
                      // launchUrl(Uri.parse(
                      //     'https://drive.google.com/file/d/1FYPCeaOOCp2C61hdVOyS68_YLZFO3jkp/view?usp=drive_link'));
                      showDialog(
                        context: context,
                        builder: (context) => Center(
                          child: Container(
                            height: 200,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.white,
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: FlickVideoPlayer(
                                flickManager: flickManager2,
                              ),
                            ),
                          ),
                        ),
                      );
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
