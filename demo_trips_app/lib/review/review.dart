import 'package:demo_trips_app/shared/user_avatar.dart';
import 'package:demo_trips_app/shared/user_details.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String name, comment;
  final int numberOfReviews, numberOfPhotos;
  final String pathToImage;

  Review(this.name, this.comment, this.numberOfReviews, this.numberOfPhotos,
      this.pathToImage);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: UserAvatar(this.pathToImage)),
          Container(
            child: UserDetails(this.name, this.numberOfPhotos,
                this.numberOfReviews, this.comment))
    ]));
  }
}
