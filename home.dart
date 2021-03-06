import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

AudioPlayer audioplayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: audioplayer);
bool play = false;
bool stop = true;

musicplay() {
  if (play == false || stop == true) {
    audio.play("audios/Khairiyat.wav");
    play = true;
    stop = false;
  }
}

musicpause() {
  if (play == true) {
    audioplayer.pause();
    play = false;
  }
}

musicstop() {
  if (play == true || stop == false) {
    audioplayer.stop();
    play = false;
    stop = true;
  }
}

var MyMusic = Icon(
  Icons.music_note,
  color: Colors.grey.shade900,
);

MaterialApp MyHome() {
  var home = Scaffold(
    appBar: AppBar(
      title: Text("Live The Music"),
      leading: MyMusic,
      backgroundColor: Colors.indigoAccent.shade100,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 300,
          height: 50,
          child: Text(
            "Khairiyat",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
            ),
          ),
        ),
        Container(
          child: Image.asset("images/khairiyat.jpg"),
          alignment: Alignment.center,
          width: 300,
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: musicplay,
              child: Icon(Icons.play_arrow),
            ),
            RaisedButton(
              onPressed: musicpause,
              child: Icon(Icons.pause),
            ),
            RaisedButton(
              onPressed: musicstop,
              child: Icon(Icons.stop),
            )
          ],
        )
      ],
    ),
  );

  var design = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
