import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_14.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class K3lhSlide13 extends StatelessWidget {
  const K3lhSlide13({super.key});

  @override
  Widget build(BuildContext context) {
    final a7 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a7.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a7.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: const K3lhSlide14()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/k3lh/13.jpg',
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
                a7.play(AssetSource('audio/k3lh-07.mp3'));
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
