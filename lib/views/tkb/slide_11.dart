import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_12.dart';
import 'package:flick_video_player/flick_video_player.dart';

class TKBSlide11 extends StatefulWidget {
  const TKBSlide11({super.key});

  @override
  State<TKBSlide11> createState() => _TKBSlide11State();
}

class _TKBSlide11State extends State<TKBSlide11> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset('assets/video/tkb-11.mp4'));
  }

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
            Container(
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
                    // launchUrl(Uri.parse(
                    //     'https://drive.google.com/file/d/1MXWX6ch5SkfbE-bgb8IIeKkSPJESk3ei/view?usp=drive_link'));

                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Container(
                          height: 200,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          color: Colors.white,
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: FlickVideoPlayer(flickManager: flickManager),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    // color: Colors.amber,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // color: Colors.blue.withOpacity(0.5),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 50,
              child: InkWell(
                onTap: () {
                  launchUrl(Uri.parse('https://bit.ly/StudiKasus_TKB'));
                },
                child: Container(
                  height: 40,
                  width: 200,
                  // color: Colors.amber,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  // color: Colors.blue.withOpacity(0.5),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

//  launchUrl(Uri.parse(
//                         'https://drive.google.com/file/d/1MXWX6ch5SkfbE-bgb8IIeKkSPJESk3ei/view?usp=drive_link'));