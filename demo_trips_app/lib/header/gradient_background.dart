import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {

  String viewTitle;


  GradientBackground(this.viewTitle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 280,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        this.viewTitle,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Lato',
          fontSize: 32,
          fontWeight: FontWeight.w800
        )
      ),
      alignment: Alignment(-0.9, -0.7),
    );
  }
}
