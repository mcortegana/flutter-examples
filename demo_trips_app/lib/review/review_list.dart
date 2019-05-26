import 'package:demo_trips_app/review/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  Widget createText() {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Text('All reviews',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFFa3a5a7))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              createText(),
              Review('Rosa Meltroso', 'There is an amazing place', 1, 10,
                  'assets/images/image01.jpg'),
              Review('Elber Galarga', 'There is an amazing place', 2, 0,
                  'assets/images/image02.jpg'),
              Review('Beni Tocamelo', 'There is an amazing place', 5, 20,
                  'assets/images/image03.jpg'),
            ]));
  }
}
