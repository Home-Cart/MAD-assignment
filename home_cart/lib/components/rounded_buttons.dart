import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Function onPressed;
  final Color titleColor;
  final double fontSize;
  final double buttonWidth;
  RoundedButton({
    this.title,
    this.buttonColor,
    @required this.onPressed,
    this.fontSize,
    this.titleColor,
    this.buttonWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          minWidth: buttonWidth,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
