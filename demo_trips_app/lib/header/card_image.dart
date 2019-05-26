import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  static const String pathFolder = 'assets/images/nature/';
  String imageName;

  CardImage(this.imageName);

  Widget createCardImage() {
    return Container(
        height: 450,
        width: 250,
        margin: EdgeInsets.only(top: 80.0, left: 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('$pathFolder$imageName')),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
              )
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return createCardImage();
  }
}
