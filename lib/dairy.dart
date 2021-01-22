

import 'package:flutter/material.dart';


class dairy extends StatefulWidget {
  static const String  id = 'dairy';
  dairy({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _dairyState createState() => _dairyState();
}

class _dairyState extends State<dairy> {

  @override
  Widget build(BuildContext context) {
    return (
        SafeArea(
            child: DefaultTabController(
                length: 4,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: new Center(
                      child: Text('Fruits', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30.0,color: Colors.black54),
                      ),
                    ),

                  ),


                  body: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    _buildFruitCard("Name", "","price", ),
                                    SizedBox(height: 20, ),
                                    GestureDetector(
                                      onTap: (){
                                        // Navigator.push(
                                        // context, MaterialPageRoute(builder: (context) => Second()));
                                      },
                                      child: _buildFruitCard("Name", "","price", ),
                                    ),
                                    SizedBox(height: 20, ),
                                    _buildFruitCard("Name", "","price",  ),
                                  ],
                                ),
                                Spacer(),

                                Column(
                                  children: <Widget>[
                                    _buildFruitCard("Name", "","price",  ),
                                    SizedBox(height: 20 ),
                                    GestureDetector(
                                      onTap: (){
                                        // Navigator.push(
                                        // context, MaterialPageRoute(builder: (context) => Second()));
                                      },
                                      child: _buildFruitCard("Name", "","price",),
                                    ),
                                    SizedBox(height: 20,),
                                    _buildFruitCard("Name", "","price", ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                )
            )
        )
    );
  }

  _buildFruitCard(String name, String asset, String rate,  ) {
    return Container(
        width: 180.5 ,
        height: 290,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20.0),
        ),


        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[



              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border_outlined),
                      onPressed: () {},
                    ),
                  ),




                  Center( //image
                    child: Image.asset(
                      asset,
                      fit: BoxFit.contain,
                      height: 30 ,
                      width: 30 ,
                    ),

                  ),
                  SizedBox(height:55
                    ,),


                  Padding(
                    //name
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text(name, style: TextStyle(
                        fontFamily: 'OpenSans-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 26
                    ),),

                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child:  Column(  //price
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(rate, style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),),
                              Text("Quantity", style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),),
                            ],
                          ),
                        ),

                        Expanded(
                            child:  Column(  //price
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: <Widget>[


                                  Container(

                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape : BoxShape.rectangle,

                                    ),
                                    child:   IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {},
                                      highlightColor: Colors.green,
                                    ),
                                  ),
                                  SizedBox(height:3,),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape : BoxShape.rectangle,

                                    ),
                                    child:   IconButton(
                                      icon: Icon(Icons.minimize_rounded),
                                      onPressed: () {},
                                      highlightColor: Colors.green,
                                    ),
                                  ),

                                ])

                        ),



                      ],
                    ),
                  ),

                ],
              ),
            ]

        )
    );
  }
}
