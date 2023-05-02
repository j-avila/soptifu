import 'package:flutter/material.dart';

class PlayerBar extends StatelessWidget {
  String pathImage = "assets/images/placeholder.png";
  var track = const {
    'name': 'test name',
    'artist': 'test artist',
    'cover': 'assets/images/placeholder.png',
  };

  PlayerBar(this.track, {super.key});

  @override
  Widget build(BuildContext context) {
    final cover = Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(track['cover']!),
            )));

    final trackInfo = Column(
      children: [Text(track['name']!), Text(track['artist']!)],
    );

    final playerInfo = Row(children: [
      Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: trackInfo,
      )
    ]);

    return Row(children: [playerInfo]);
  }
}
