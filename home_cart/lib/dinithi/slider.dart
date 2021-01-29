import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {

  static const String id = 'slider';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'image/category/16-161650_transparent-background-vegetables-png-png-download.png',
            imageCaption: 'Vegetables',
          ),
          Category(
            imageLocation: 'image/category/fruits.png',
            imageCaption: 'Fruits',
          ),
          Category(
            imageLocation: 'image/category/3-35135_cold-drink-images-png-transparent-png.png',
            imageCaption: 'Drinks',
          ),
          Category(
            imageLocation: 'image/category/snaks.png',
            imageCaption: 'Snaks',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap:(){},
          child: Container(
          width: 200.0,
          child: ListTile(
            title: Image.asset(imageLocation,
              width: 350.0,
              height: 150.0,
            ),
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(imageCaption, style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, ),),
              width: 50,
              height: 40,
              ),
            ),
      ),
      ),
    );
  }
}