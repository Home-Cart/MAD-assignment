import 'package:flutter/material.dart';
import 'package:homecartnew/vegetables.dart';
import 'package:homecartnew/fruits.dart';
import 'package:homecartnew/dairy.dart';
import 'package:homecartnew/nuts.dart';

class customer extends StatefulWidget {
  static const String  id = 'customer';
  customer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _customerState createState() => _customerState();
}

class _customerState extends State<customer> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }


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

                            controller: tabController,
                            indicatorColor: Colors.green,
                            indicatorWeight: 3.0,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.white,
                            isScrollable: true,
                            tabs: <Widget>[
                              Tab(
                                child: Text("Fruits", style: TextStyle(
                                    fontSize: 23.0, fontFamily: 'Family Name'


                                ),),
                              ),
                              Tab(
                                child: Text("Vegetables", style: TextStyle(
                                    fontSize: 23.0, fontFamily: 'Family Name'


                                ),),
                              ),
                              Tab(
                                child: Text("Nuts & Seeds", style: TextStyle(
                                    fontSize: 23.0, fontFamily: 'Family Name'


                                ),),
                              ),
                              Tab(
                                child: Text("Dairy", style: TextStyle(
                                    fontSize: 23.0, fontFamily: 'Family Name'


                                ),),
                              ),
                            ]),



                          ),
                  body:  Container(
                    child: TabBarView(
                    controller: tabController,
                    children: <Widget>[
                      fruits(),
                      vegetables(),
                      nuts(),
                      dairy(),

                    ]),
            ),

                  ),
                        )
                      )
                );


  }
}
