import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioButton extends StatelessWidget {
  final String txt;
  const AudioButton({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    // final player = AudioPlayer();
    return Container(
      height: 40,
      width: 70,
      child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          // style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          // onPressed: () {
          //   // player.play(AssetSource(srcAudio));
          //   // player.stop();
          // },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.volume_up_rounded,
                color: Colors.black,
              ),
              Text(
                txt,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
