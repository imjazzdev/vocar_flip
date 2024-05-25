import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/pariwisata/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';

import '../../widget/audio_button.dart';

class PariwisataSlide2 extends StatelessWidget {
  const PariwisataSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    final a1 = AudioPlayer();
    final a2 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a1.dispose();
            a2.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a1.stop();
            a2.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: PariwisataSlide3()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/pariwisata/2.jpg',
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
                a1.play(AssetSource('audio/pariwisata-01.mp3'));
                a2.stop();
              },
              child: const AudioButton(
                txt: 'A1',
              ),
            ),
            InkWell(
              onTap: () {
                a1.stop();
                a2.play(AssetSource('audio/pariwisata-02.mp3'));
              },
              child: const AudioButton(
                txt: 'A2',
              ),
            )
          ],
        ),
      ),
    );
  }
}
