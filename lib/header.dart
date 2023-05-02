import 'package:flutter/material.dart';
import 'dart:math';
import 'package:album_list/wave_border.dart';
import 'package:album_list/background_back.dart';

class HeaderApp extends StatelessWidget {
  Color paper = const Color.fromARGB(8, 0, 0, 0);
  HeaderApp(this.paper, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Background('Popular', paper),
      Container(
          margin: const EdgeInsets.only(top: 80),
          child: Transform.rotate(
            angle: pi,
            child: WavedBorderWidget(paper),
          ))
    ]);
  }
}
