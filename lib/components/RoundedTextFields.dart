import 'package:flutter/material.dart';
import 'file:///D:/Academic%20Works/home_cart/lib/constants.dart';

class RoundedTextFields extends StatelessWidget {
  RoundedTextFields({
    this.hintText,
    this.onChanged,
    this.validator,
  });

  final String hintText;
  final FormFieldSetter<String> onChanged;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        //TODO: Connect to firebase.
      },
      cursorHeight: 20,
      decoration: kTextFieldDecoration.copyWith(hintText: hintText),
    );
  }
}
