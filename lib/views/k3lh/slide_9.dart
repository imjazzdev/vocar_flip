import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/widget/audio_button.dart';

import 'slide_10.dart';

class K3lhSlide9 extends StatelessWidget {
  const K3lhSlide9({super.key});

  @override
  Widget build(BuildContext context) {
    final a1 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a1.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a1.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: K3lhSlide10()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/k3lh/9.jpg',
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
                a1.play(AssetSource('audio/k3lh-01.mp3'));
              },
              child: AudioButton(
                txt: 'A1',
              ),
            )
          ],
        ),
      ),
    );
  }
}
