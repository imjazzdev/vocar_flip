import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocar_flip/views/k3lh/slide_3.dart';
import 'package:vocar_flip/views/tkb/slide_5.dart';
import 'package:vocar_flip/widget/audio_button.dart';

class TKBSlide4 extends StatelessWidget {
  const TKBSlide4({super.key});

  @override
  Widget build(BuildContext context) {
    final a5 = AudioPlayer();
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (dis) {
          if (dis.delta.dx > 0) {
            a5.dispose();
            Navigator.pop(context);
          } else if (dis.delta.dx < 0) {
            a5.stop();
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: TKBSlide5()));
          }
        },
        child: SafeArea(
            child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/image/tkb/4.jpg',
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
                a5.play(AssetSource('audio/tkb-05.mp3'));
              },
              child: const AudioButton(
                txt: 'A5',
              ),
            )
          ],
        ),
      ),
    );
  }
}
