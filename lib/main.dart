import 'dart:ui';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'Audio_Player.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter22879/al_fatiha.dart';



import 'package:flutter/material.dart';


import 'al_baqara.dart';
import 'imran.dart';
import 'music_widgets.dart';
import 'nissa.dart';





void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey[300],
                    Colors.blue[200],

                  ]
              )
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(30.0),
                        topRight: const Radius.circular(30.0),
                        bottomLeft: const Radius.circular(30.0),
                        bottomRight: const Radius.circular(30.0),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Colors.blueGrey[300],
                            Colors.blue[200],
                          ]
                      )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(30.0),
                          topRight: const Radius.circular(30.0),
                          bottomLeft: const Radius.circular(30.0),
                          bottomRight: const Radius.circular(30.0),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            colors: [
                              Colors.grey.withOpacity(0.2),
                              Colors.black.withOpacity(0.1),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'القرآن الكريم',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                            "وَإِذا قُرِئَ القُرآنُ فَاستَمِعوا لَهُ وَأَنصِتوا لَعَلَّكُم تُرحَمونَ",
                            style: TextStyle(fontSize: 15.0)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 3,
                      padding: EdgeInsets.all(8.0),
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8.0,
                      children: [
                        MusicWidgets(
                            'assets/images/image1.jpg', 'سورة الفاتحة', al_fatiha()),
                        MusicWidgets(
                            'assets/images/image1.jpg', 'سورة الإخلاص', ikhlas()),
                        MusicWidgets(
                            'assets/images/image3.jpg', 'سورة الفلق', falak()),
                        MusicWidgets(
                            'assets/images/image4.jpg', 'سورة الناس', nass()),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}

String durationToString(Duration duration) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  String twoDigitMinutes =
  twoDigits(duration.inMinutes.remainder(Duration.minutesPerHour));
  String twoDigitSeconds =
  twoDigits(duration.inSeconds.remainder(Duration.secondsPerMinute));
  return "$twoDigitMinutes:$twoDigitSeconds";
}
