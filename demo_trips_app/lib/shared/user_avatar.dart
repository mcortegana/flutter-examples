import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserAvatar extends StatelessWidget {

  final String pathToPhoto;

  UserAvatar(this.pathToPhoto);

  Widget createUserAvatar(String pathToPhoto) {
    return CircleAvatar(
      backgroundImage: AssetImage(pathToPhoto),
      radius: 40.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: createUserAvatar(this.pathToPhoto),
    );
  }

}