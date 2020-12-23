import 'package:flutter/material.dart';
import 'package:home_cart/components/rounded_buttons.dart';

class ItemsScreen extends StatefulWidget {
  static const String id = 'items_screen';
  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
          onPressed: null,
          //TODO: Create the back button.
        ),
        title: Text("Items"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
            //TODO:Create the Search button.
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage("image/image1.jpg"),
                  ),
                ),
                Container(),
              ],
            ),
            SizedBox(),
            Container(
              child: Column(
                children: [
                  Table(
                    children: [
                      TableRow(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  "Biscuits",
                                  style: TextStyle(fontSize: 40.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "(4 units 1kg)",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Units",
                                  style: TextStyle(fontSize: 25.0),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  "400.00",
                                  style: TextStyle(fontSize: 30.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text("data"),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                  title: 'Save for Later',
                  buttonColor: Colors.black45,
                  onPressed: null,
                  titleColor: Colors.white,
                  fontSize: 18.0,
                  buttonWidth: 160.0,
                ),
                RoundedButton(
                  title: 'Add to Cart',
                  buttonColor: Colors.green.shade400,
                  onPressed: null,
                  titleColor: Colors.black,
                  fontSize: 18.0,
                  buttonWidth: 160.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
