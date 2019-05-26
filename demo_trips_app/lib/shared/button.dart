import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonValue;
  final int color1, color2;
  BuildContext context;

  Button(this.buttonValue, this.color1, this.color2, this.context);

  Widget createButton() {

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Scaffold.of(this.context).showSnackBar(
          SnackBar(content: Text("Navigating"))
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 40),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Color(this.color1), Color(this.color2)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            this.buttonValue,
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
