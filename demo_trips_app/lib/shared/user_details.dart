import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final String userName;
  final int numberOfPhotos;
  final int numberOfReviews;
  final String comment;

  UserDetails(this.userName, this.numberOfPhotos, this.numberOfReviews,
      this.comment);

  Widget createUserName(String name) {
    return Container(
      child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'Lato',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 20)
      )
    );
  }

  Widget createDetail(int reviews, int photos) {
    var textReviews = reviews == 1 ? 'review' : 'reviews';
    var textPhotos = photos == 1 ? 'photo' : 'photos';
    return Text(
      "$reviews $textReviews - $photos $textPhotos",
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color(0xFFa3a5a7)
      ),
    );
  }

  Widget createComment(String comment) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
          '\"${comment.trim()}\"',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'Quicksand',
              color: Colors.black,
              fontSize: 17,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          createUserName(this.userName),
          createDetail(this.numberOfReviews, this.numberOfPhotos),
          createComment(this.comment)
        ],
      ),
    );
  }
}
