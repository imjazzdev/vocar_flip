import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_6.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class TKBSlide5 extends StatelessWidget {
  const TKBSlide5({super.key});

  @override
  Widget build(BuildContext context) {
    final a6 = AudioPlayer();
    final a7 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a6.dispose();
            a7.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a6.stop();
            a7.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: TKBSlide6()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/tkb/5.jpg',
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
                a6.play(AssetSource('audio/tkb-06.mp3'));
                a7.stop();
              },
              child: const AudioButton(
                txt: 'A6',
              ),
            ),
            InkWell(
              onTap: () {
                a6.stop();
                a7.play(AssetSource('audio/tkb-07.mp3'));
              },
              child: const AudioButton(
                txt: 'A7',
              ),
            )
          ],
        ),
      ),
    );
  }
}
