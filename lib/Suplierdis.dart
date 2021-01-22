import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:home/importitem.dart';

class Suplier extends StatefulWidget {
  static const String  id = 'suplierdis';
  @override
  _SuplierState createState() => _SuplierState();
}

class _SuplierState extends State<Suplier> {
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
                          Tab(text: ('Nuts & Seeds')),
                          Tab(text: ('Diary')),
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


                              Navigator.push(context,MaterialPageRoute(builder: (context) => ImportItem()));
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

// ignore: must_be_immutable
class BlogsTile extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String imgUrl, ItemName, Price, Quantity, Other_Information;
  BlogsTile(
      {@required this.imgUrl,
        // ignore: non_constant_identifier_names
        @required this.ItemName,
        // ignore: non_constant_identifier_names
        @required this.Price,
        // ignore: non_constant_identifier_names
        @required this.Quantity,
        // ignore: non_constant_identifier_names
        @required this.Other_Information});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      height: 150,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 170,
            decoration: BoxDecoration(
                color: Colors.black45.withOpacity(0.3),
                borderRadius: BorderRadius.circular(6)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  ItemName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  Price,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(Quantity),
                SizedBox(
                  height: 4,
                ),
                Text(Other_Information),
              ],
            ),
          )
        ],
      ),
    );
  }
}