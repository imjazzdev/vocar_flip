import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_18.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class K3lhSlide17 extends StatelessWidget {
  const K3lhSlide17({super.key});

  @override
  Widget build(BuildContext context) {
    final a8 = AudioPlayer();
    final a9 = AudioPlayer();
    final a10 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a8.dispose();
            a9.dispose();
            a10.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a8.stop();
            a9.stop();
            a10.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: const K3lhSlide18()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/k3lh/17.jpg',
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
                a8.play(AssetSource('audio/k3lh-08.mp3'));
                a9.stop();
                a10.stop();
              },
              child: const AudioButton(
                txt: 'A8',
              ),
            ),
            InkWell(
              onTap: () {
                a8.stop();
                a9.play(AssetSource('audio/k3lh-09.mp3'));
                a10.stop();
              },
              child: const AudioButton(
                txt: 'A9',
              ),
            ),
            InkWell(
              onTap: () {
                a8.stop();
                a9.stop();
                a10.play(AssetSource('audio/k3lh-10.mp3'));
              },
              child: const AudioButton(
                txt: 'A10',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
