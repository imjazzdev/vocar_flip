import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_8.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';
import 'package:flick_video_player/flick_video_player.dart';

class PariwisataSlide7 extends StatefulWidget {
  const PariwisataSlide7({super.key});

  @override
  State<PariwisataSlide7> createState() => _PariwisataSlide7State();
}

class _PariwisataSlide7State extends State<PariwisataSlide7> {
  late FlickManager flickManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset('assets/video/pariwisata-7.mp4'));
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
                    // launchUrl(Uri.parse(
                    //     'https://drive.google.com/file/d/1wlv621_fYoz54b56RUVO-4xwFDQiPcha/view?usp=drive_link'));
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
