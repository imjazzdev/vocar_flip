import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_3.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class TKBSlide2 extends StatelessWidget {
  const TKBSlide2({super.key});

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
                    child: const TKBSlide3()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/tkb/2.jpg',
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
                a1.play(AssetSource('audio/tkb-01.mp3'));
              },
              child: const AudioButton(
                txt: 'A1',
              ),
            )
          ],
        ),
      ),
    );
  }
}
