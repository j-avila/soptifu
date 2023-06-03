import 'package:flutter/material.dart';
import 'package:album_list/list_item.dart';

class AlbumList extends StatelessWidget {
  AlbumList({super.key});

  final itemsList = <Widget>[
    Container(
      margin: const EdgeInsets.only(
        top: 160,
        bottom: 5,
        left: 20,
      ),
      child: const Text("Reviews",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
    ),
    SizedBox(
        height: 640,
        child: Container(
          padding: const EdgeInsets.only(bottom: 40),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  ItemList("assets/images/tyler-the-creator-flower-boy.jpg",
                      "Tyler the creator", "Flower Boy"),
                  ItemList("assets/images/lana-del-rey-born-to-die.jpg",
                      "Lana del Rey", "Born to Die"),
                  ItemList("assets/images/queen.jpg", "Queen", "Queen"),
                  ItemList("assets/images/metallica-reload.jpg", "Metallica",
                      "Reload"),
                  ItemList("assets/images/dario-fishcer-undertown.jpg",
                      "dario fisher", "undertown"),
                  ItemList(
                      "assets/images/tool-lateralus.jpg", "Tool", "Lateralus"),
                  ItemList("assets/images/elastic-joshua-Redman.jpg",
                      "Joshua Reedman", "Elastic"),
                  ItemList("assets/images/soulive-next.jpg", "Soulive", "Next"),
                  ItemList("assets/images/its-hard-the-bad-plus.jpg",
                      "The Bad Plus", "It's Hard"),
                ],
              )),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: itemsList);
  }
}
