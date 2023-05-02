import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  String pathImage = "assets/images/placeholder.png";
  String artist = "Some Artist";
  String name = "Some Album";

  ItemList(this.pathImage, this.artist, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    final photo = Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(pathImage),
            )));

    final albumName = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)));

    final albumArtist = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "Lato", color: Colors.white, fontSize: 17.0)));

    const itemActions = Icon(
      Icons.more_horiz,
      color: Colors.white60,
      size: 35,
    );

    final itemMeta = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[albumName, albumArtist]);

    final itemInfo = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[photo, itemMeta]);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[itemInfo, itemActions]);
  }
}
