import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homecart/ImportItems.dart';
class ItemsSupplier extends StatefulWidget {
  @override
  _ItemsSupplierState createState() => _ItemsSupplierState();
}

class _ItemsSupplierState extends State<ItemsSupplier> {
  @override
  Widget build(BuildContext context) {
    return (
    SafeArea(
    child: DefaultTabController(
    length: 4,
    child: Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.green,
    title: new Center(
    child: Text('Items', textAlign: TextAlign.center,
    style: TextStyle(fontSize: 30.0),
    ),
    ),
    actions: [
    // action button
    IconButton(
    icon: Icon(Icons.search),
    onPressed: () {},
    ),
    IconButton(
    icon: Icon(Icons.more_vert),
    onPressed: () {},
    ),
    ],
    leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {},
    ),
    bottom:
    TabBar(
    indicatorColor: Colors.white54,
    labelStyle: TextStyle(
    fontSize: 20.0, fontFamily: 'Family Name'),
    //For Selected tab
    unselectedLabelStyle: TextStyle(
    fontSize: 17.0, fontFamily: 'Family Name'),
    tabs: [
    Tab(text: ('Fruits'),),
    Tab(text: ('Vegitables')),
    Tab(text: ('Drinks')),
    Tab(text: ('Meat')),
    ],
    ),
    elevation: 50.0,


    ),
      body: Container(),
      floatingActionButton:Container(

        padding: EdgeInsets.symmetric(vertical: 15),

        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {


            Navigator.push(context,MaterialPageRoute(builder: (context) => ImportItems()));
          },
          child: Icon(Icons.add, color: Colors.white,size: 20,),
          )
        ],
      ),
    )
    )
    )
    )
    );

  }
}
