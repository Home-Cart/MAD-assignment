import 'package:flutter/material.dart';
import 'package:home/Suplierdis.dart';
import 'package:home/discount%20item.dart';
import 'package:home/importitem.dart';
import 'package:home/loader.dart';
import 'package:home/category_user.dart';
import 'package:home/slider.dart';

void main() {
  runApp(HomeCart());
}


class HomeCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Loader.id,
      routes: {
        Loader.id: (context) => Loader(),
        CategoryUser.id: (context) => CategoryUser(),
        HorizontalList.id: (context) => HorizontalList(),
        DiscountItem.id: (context) => DiscountItem(),
        ImportItem.id: (context) => ImportItem(),
        Suplier.id: (context) => Suplier(),
      },
    );
  }
}
