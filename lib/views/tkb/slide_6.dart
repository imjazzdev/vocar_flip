import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_7.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class TKBSlide6 extends StatelessWidget {
  const TKBSlide6({super.key});

  @override
  Widget build(BuildContext context) {
    final a8 = AudioPlayer();
    final a9 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a8.dispose();
            a9.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a8.stop();
            a9.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: TKBSlide7()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/tkb/6.jpg',
            fit: BoxFit.cover,
          ),
        )),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                a8.play(AssetSource('audio/tkb-08.mp3'));
                a9.stop();
              },
              child: const AudioButton(
                txt: 'A8',
              ),
            ),
            InkWell(
              onTap: () {
                a8.stop();
                a9.play(AssetSource('audio/tkb-09.mp3'));
              },
              child: const AudioButton(
                txt: 'A9',
              ),
            )
          ],
        ),
      ),
    );
  }
}
