import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

appproject2() {
  var playIcon = Icon(
    Icons.play_circle_outline,
    size: 30,
  );
  var pauseIcon = Icon(
    Icons.pause_circle_outline,
    size: 30,
  );
  var stopIcon = Icon(
    Icons.stop,
    size: 30,
  );
  var a = AudioPlayer();
  var p = AudioCache(fixedPlayer: a);

  var playButton = RaisedButton(
    onPressed: () => a.play(
        'https://flutter1709.s3.ap-south-1.amazonaws.com/02+Akh+Lad+Jave+-+Loveratri.mp3'),
    child: playIcon,
  );
  var pauseButton = RaisedButton(
    onPressed: () => a.pause(),
    child: pauseIcon,
  );
  var stopButton = RaisedButton(
    onPressed: () => a.stop(),
    child: stopIcon,
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        //child: VideoApp(),
        child: Row(
          children: <Widget>[
            playButton,
            Container(
              width: 10,
            ),
            pauseButton,
            Container(
              width: 10,
            ),
            stopButton,
          ],
        ),
      ),
    ),
  );
}
