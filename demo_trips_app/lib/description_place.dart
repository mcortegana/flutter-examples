import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String summaryPlace;

  // Constructor
  DescriptionPlace(this.namePlace, this.stars, this.summaryPlace);

  Widget createPlaceName() {
    return Row(
      children: <Widget>[
        Text(
          this.namePlace,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }

  Widget createPlaceDescription() {
    return Text(
        this.summaryPlace,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
        textAlign: TextAlign.justify);
  }

  Widget createStar(bool filled) {
    return new Icon(
        filled == null
            ? Icons.star_border
            : filled ? Icons.star : Icons.star_half,
        color: Colors.amber);
  }

  Widget createRating() {
    final numberOfStars = this.stars;
    if (numberOfStars > 5) {
      throw new Exception('Invalid stars number');
    } else if (numberOfStars == 5) {
      List<Widget> rowOfFullStars = [];
      List(numberOfStars.round())
          .forEach((i) => rowOfFullStars.add(createStar(true)));
      return Row(children: rowOfFullStars);
    } else {
      return generateRating(numberOfStars);
    }
  }

  Widget generateRating(double numberOfStars) {
    List<Widget> rowOfFullStars = [];
    List<Widget> rowOfBorderStars = [];
    List<Widget> rowOfHalfStars = [];

    int fullStars = numberOfStars.truncate();
    int halfStars = (numberOfStars - fullStars).round();
    int emptyStars = 5 - (fullStars + halfStars);

    List(fullStars).forEach((i) => rowOfFullStars.add(createStar(true)));
    List(halfStars).forEach((i) => rowOfFullStars.add(createStar(false)));
    List(emptyStars).forEach((i) => rowOfFullStars.add(createStar(null)));

    List<Widget> finalRowOfStars = []..addAll(rowOfFullStars)..addAll(
        rowOfHalfStars)..addAll(rowOfBorderStars);

    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(children: finalRowOfStars),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 240, right: 20, bottom: 10, left: 20),
      child: Column(
        children: <Widget>[
          createPlaceName(),
          createRating(),
          createPlaceDescription()
        ],
      ),
    );
  }

}
