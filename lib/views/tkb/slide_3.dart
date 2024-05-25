import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_4.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class TKBSlide3 extends StatelessWidget {
  const TKBSlide3({super.key});

  @override
  Widget build(BuildContext context) {
    final a2 = AudioPlayer();
    final a3 = AudioPlayer();
    final a4 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a2.dispose();
            a3.dispose();
            a4.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a2.stop();
            a3.stop();
            a4.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: TKBSlide4()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/tkb/3.jpg',
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
                a2.play(AssetSource('audio/tkb-02.mp3'));
                a3.stop();
                a4.stop();
              },
              child: const AudioButton(
                txt: 'A2',
              ),
            ),
            InkWell(
              onTap: () {
                a2.stop();
                a3.play(AssetSource('audio/tkb-03.mp3'));
                a4.stop();
              },
              child: const AudioButton(
                txt: 'A3',
              ),
            ),
            InkWell(
              onTap: () {
                a2.stop();
                a3.stop();
                a4.play(AssetSource('audio/tkb-04.mp3'));
              },
              child: const AudioButton(
                txt: 'A4',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
