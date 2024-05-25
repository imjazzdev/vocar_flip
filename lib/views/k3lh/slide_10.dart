import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';

import '../../widget/audio_button.dart';
import 'slide_11.dart';

class K3lhSlide10 extends StatefulWidget {
  const K3lhSlide10({super.key});

  @override
  State<K3lhSlide10> createState() => _K3lhSlide10State();
}

class _K3lhSlide10State extends State<K3lhSlide10> {
  final a2 = AudioPlayer();
  final a3 = AudioPlayer();
  final a4 = AudioPlayer();
  final a5 = AudioPlayer();
  final a6 = AudioPlayer();
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a2.dispose();
            a3.dispose();
            a4.dispose();
            a5.dispose();
            a6.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a2.stop();
            a3.stop();
            a4.stop();
            a5.stop();
            a6.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: const K3lhSlide11()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/k3lh/10.jpg',
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
                a2.play(AssetSource('audio/k3lh-02.mp3'));
                a3.stop();
                a4.stop();
                a5.stop();
                a6.stop();
              },
              child: AudioButton(
                txt: 'A2',
              ),
            ),
            InkWell(
              onTap: () {
                a2.stop();
                a3.play(AssetSource('audio/k3lh-03.mp3'));
                a4.stop();
                a5.stop();
                a6.stop();
              },
              child: AudioButton(
                txt: 'A3',
              ),
            ),
            InkWell(
              onTap: () {
                a2.stop();
                a3.stop();
                a4.play(AssetSource('audio/k3lh-04.mp3'));
                a5.stop();
                a6.stop();
              },
              child: AudioButton(
                txt: 'A4',
              ),
            ),
            InkWell(
              onTap: () {
                a2.stop();
                a3.stop();
                a4.stop();
                a5.play(AssetSource('audio/k3lh-05.mp3'));
                a6.stop();
              },
              child: AudioButton(
                txt: 'A5',
              ),
            ),
            InkWell(
              onTap: () {
                a2.stop();
                a3.stop();
                a4.stop();
                a5.stop();
                a6.play(AssetSource('audio/k3lh-06.mp3'));
              },
              child: AudioButton(
                txt: 'A6',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
