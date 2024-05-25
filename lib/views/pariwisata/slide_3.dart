import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_4.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';

import '../../widget/audio_button.dart';

class PariwisataSlide3 extends StatelessWidget {
  const PariwisataSlide3({super.key});

  @override
  Widget build(BuildContext context) {
    final a3 = AudioPlayer();
    final a4 = AudioPlayer();
    final a5 = AudioPlayer();
    final a6 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a3.dispose();
            a4.dispose();
            a5.dispose();
            a6.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a3.stop();
            a4.stop();
            a5.stop();
            a6.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: PariwisataSlide4()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/pariwisata/3.jpg',
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
                a3.play(AssetSource('audio/pariwisata-03.mp3'));
                a4.stop();
                a5.stop();
                a6.stop();
              },
              child: const AudioButton(
                txt: 'A3',
              ),
            ),
            InkWell(
              onTap: () {
                a3.stop();
                a4.play(AssetSource('audio/pariwisata-04.mp3'));
                a5.stop();
                a6.stop();
              },
              child: const AudioButton(
                txt: 'A4',
              ),
            ),
            InkWell(
              onTap: () {
                a3.stop();
                a4.stop();
                a5.play(AssetSource('audio/pariwisata-05.mp3'));
                a6.stop();
              },
              child: const AudioButton(
                txt: 'A5',
              ),
            ),
            InkWell(
              onTap: () {
                a3.stop();
                a4.stop();
                a5.stop();
                a6.play(AssetSource('audio/pariwisata-06.mp3'));
              },
              child: const AudioButton(
                txt: 'A6',
              ),
            )
          ],
        ),
      ),
    );
  }
}
