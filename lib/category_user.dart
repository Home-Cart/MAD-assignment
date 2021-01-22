import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:home/discount%20item.dart';
import 'package:home/slider.dart';

class CategoryUser extends StatefulWidget {

  static const String id = 'category_user';

  @override
  _CategoryUserState createState() => _CategoryUserState();
}

class _CategoryUserState extends State<CategoryUser> {
  @override
  // ignore: override_on_non_overriding_member
  Widget imageCarousel = new Container(
    height: 200.0,
    child: Carousel(
      overlayShadow: false,
      borderRadius: true,
      boxFit: BoxFit.cover,
      autoplay: true,
      dotSize: 6.0,
      indicatorBgPadding: 0.0,
      images: [
        new AssetImage("image/slider/slider1.jpg"),
        new AssetImage("image/slider/slider2.jpg"),
        new AssetImage("image/slider/slider3.jpg"),
        new AssetImage("image/slider/slider4.jpg"),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1500),
    ),
  );

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Category'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search,color: Colors.white,),
              onPressed: null,
              //link searchBar
            ),
            IconButton(icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                onPressed: (){
                     // link the cart
                }
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 5.0,),
            imageCarousel,
            Padding(padding: const EdgeInsets.only(top: 0.0, left: 5.0,)
            ),

            HorizontalList(),
            DiscountItem(),
          ],
        ),
      ),
    );
  }
}
