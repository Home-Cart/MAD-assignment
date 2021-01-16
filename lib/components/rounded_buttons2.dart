import 'package:flutter/material.dart';

class RoundedButton2 extends StatelessWidget {
  final IconData iconz;
  final double topL;
  final double bottomL;
  final double topR;
  final double bottomR;
  final Function onPressed;
  RoundedButton2({
    this.iconz,
    this.topL,
    this.bottomL,
    this.topR,
    this.bottomR,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topL),
        bottomLeft: Radius.circular(bottomL),
        topRight: Radius.circular(topR),
        bottomRight: Radius.circular(bottomR),
      ),
      child: MaterialButton(
        child: Icon(
          iconz,
          size: 30.0,
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
