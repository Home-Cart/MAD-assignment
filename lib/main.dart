import 'package:flutter/material.dart';
import 'package:homecartnew/fruits.dart';
import 'package:homecartnew/itemimport.dart';
import 'package:homecartnew/login.dart';
import 'package:homecartnew/suplier.dart';
import 'package:homecartnew/customer.dart';
import 'package:homecartnew/vegetables.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        initialRoute: login.id,
        routes: {
          itemimport.id:(context) => itemimport(),
          fruits.id:(context) => fruits(),
          vegetables.id:(context) => vegetables(),
          login.id:(context) => login(),
          suplier.id:(context) => suplier(),
          customer.id:(context) => customer(),

        }
    );
  }
}


