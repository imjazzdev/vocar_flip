import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_5.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';

import '../../widget/audio_button.dart';

class PariwisataSlide4 extends StatelessWidget {
  const PariwisataSlide4({super.key});

  @override
  Widget build(BuildContext context) {
    final a7 = AudioPlayer();
    final a8 = AudioPlayer();
    final a9 = AudioPlayer();
    final a10 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a7.dispose();
            a8.dispose();
            a9.dispose();
            a10.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a7.stop();
            a8.stop();
            a9.stop();
            a10.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: PariwisataSlide5()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/pariwisata/4.jpg',
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
                a7.play(AssetSource('audio/pariwisata-07.mp3'));
                a8.stop();
                a9.stop();
                a10.stop();
              },
              child: const AudioButton(
                txt: 'A7',
              ),
            ),
            InkWell(
              onTap: () {
                a7.stop();
                a8.play(AssetSource('audio/pariwisata-08.mp3'));
                a9.stop();
                a10.stop();
              },
              child: const AudioButton(
                txt: 'A8',
              ),
            ),
            InkWell(
              onTap: () {
                a7.stop();
                a8.stop();
                a9.play(AssetSource('audio/pariwisata-09.mp3'));
                a10.stop();
              },
              child: const AudioButton(
                txt: 'A9',
              ),
            ),
            InkWell(
              onTap: () {
                a7.stop();
                a8.stop();
                a9.stop();
                a10.play(AssetSource('audio/pariwisata-10.mp3'));
              },
              child: const AudioButton(
                txt: 'A10',
              ),
            )
          ],
        ),
      ),
    );
  }
}
