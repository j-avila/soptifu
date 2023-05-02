import 'dart:ui';

import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Icon(
                Icons.home_outlined,
                color: Colors.white60,
                size: 35,
              ),
              Text('Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ))
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.search_outlined,
                color: Colors.white60,
                size: 35,
              ),
              Text('Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ))
            ],
          ),
          Column(children: const [
            Icon(
              Icons.library_music_outlined,
              color: Colors.white60,
              size: 35,
            ),
            Text('Library',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ]),
        ],
      ),
    );

    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Color.fromARGB(42, 0, 0, 0)),
      child: ClipRRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [menu],
              ))),
    );
  }
}
