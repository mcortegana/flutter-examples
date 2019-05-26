import 'package:demo_trips_app/header/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {

  Widget createListView() {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('beach-city.jpg'),
          CardImage('bay-beach-bicycle.jpg'),
          CardImage('beach-bright-clear-sky.jpg'),
          CardImage('beach-buildings-clouds.jpg'),
          CardImage('beach-calm-coconut-tree.jpg'),
          CardImage('pascal-debrunner.jpg'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return createListView();
  }

}