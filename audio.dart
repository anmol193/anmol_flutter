//import 'dart:ffi';

//import 'package:Project_app/ui/audio2.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

appproject() {
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
  /*var prev_icon = Icon(
    Icons.skip_previous,
    color: Colors.grey,
  );
  var next_icon = Icon(
    Icons.skip_next,
    color: Colors.grey,
  );

  var prev_track = FloatingActionButton(
    onPressed: null,
    child: prev_icon,
  );
  var next_track = FloatingActionButton(
    onPressed: appproject1(),
    child: next_icon,
  );*/

  var a = AudioPlayer();
  var p = AudioCache(fixedPlayer: a);

  var playButton = RaisedButton(
    onPressed: () => p.play('SawarneLage.mp3'),
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
            //prev_track,
            //next_track,
          ],
        ),
      ),
    ),
  );
}
