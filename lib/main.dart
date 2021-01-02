import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:homecart/ItemsSupplier.dart';

void main(){
  runApp(SignIn());

}
class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: ItemsSupplier(),
    );
  }


}
