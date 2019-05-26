import 'package:demo_trips_app/header/card_image_list.dart';
import 'package:demo_trips_app/header/gradient_background.dart';
import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {

  final String viewName;

  HeaderBar(this.viewName);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        children: <Widget>[GradientBackground(this.viewName), CardImageList()]);
  }
}
