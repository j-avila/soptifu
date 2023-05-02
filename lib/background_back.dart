// gnerate stateless widget flutter
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  String title = "popular";
  Color themeBg = const Color.fromARGB(255, 0, 0, 0);
  Background(this.title, this.themeBg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 2, 232, 98),
                  Color.fromARGB(255, 136, 189, 157)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6])),
        alignment: const Alignment(-0.9, 0),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold),
        ));
  }
}
